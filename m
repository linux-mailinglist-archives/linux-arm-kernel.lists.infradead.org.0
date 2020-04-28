Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C711BBA14
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 11:41:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PHhEjNSD+bP3oxWnjFbFbaN1CCE+VBeVLcIVpeecKpA=; b=EzATQEDwJSS8zf
	KZFPHsW/V1vGKG9pPveA25xYmJOW7N5Uc5tQxirtHXNt0lFsBLE992uJj5kbOPBjaEhkUDX+iqHFX
	sxL37ffYHi9JqOlyveriTsP3hr95Ik7r+ZxJBaem9KF+J66ncRu+LbqVL+9ehIHFws57wqKtUoZMp
	R/iCMLB/H/SQbDjDLKTYrJcK0w0YZit1DQrlEb8yM8uTHnkCAlF+hjaXV8rRPnXUPBo+k2RqG6BCm
	BAlrNl07TOWtieYcNeWgBgDNtBLOol6KaeboSnLmQlXozzEac7Xl+JhPbIIMDxvPVZc8omCjq9Jlp
	+FMthLRLE2R/uZryeQ2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTMjX-000737-Ea; Tue, 28 Apr 2020 09:40:55 +0000
Received: from mail-ej1-f68.google.com ([209.85.218.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTMjF-000724-OQ
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 09:40:39 +0000
Received: by mail-ej1-f68.google.com with SMTP id e2so16655426eje.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 02:40:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QPpy8dELuAAjDK6ELgslqKgtZGdGtoakZnwFCsFyxiY=;
 b=TVDA/Jj0UawGkLmOoqGM9CNir252roCeW5F9zse22JlFKhf988xC7SlsE4nlryOS5T
 3aZL/nIDFIG0HGhavGnNWgIW53iP8OAZwwSfFwcpAeAUlGq4UAHAOzdVvuEFNtMPii7q
 mgSs0Q7xTlNxKzuLlYW6iKDSnfZyOGL4+ywoFqlgNriKeHV9g+5WuGUITIPg6pSlld15
 APJrqFMAsuVpz4mTNS64luckO+e6aEqDAJUmS5SLEsQusXZTbvriHFxzzo8zqR+yQU1K
 V1tjrl3X1SAhAStk/GX1By2GUuWpQVjrPVgHStnWqjfuzwNv1VecHditRIpviVFW9toJ
 Y35Q==
X-Gm-Message-State: AGi0PuYChkLUoEz0LCofuH46ifIybxvEPuLCBDhluf9qejXE16H4xYZ3
 XOd9oJE+DPUH/CqK31srWSQ=
X-Google-Smtp-Source: APiQypK/J2mRSfYf1Diw96LSTO8Uy+VHIm/8bbRhhtGMjC1QU33gdmtKQlVA6cbWyNIKnF5z1H2Phw==
X-Received: by 2002:a17:907:20b5:: with SMTP id
 pw21mr22933290ejb.227.1588066835749; 
 Tue, 28 Apr 2020 02:40:35 -0700 (PDT)
Received: from kozik-lap ([194.230.155.237])
 by smtp.googlemail.com with ESMTPSA id yd11sm398829ejb.8.2020.04.28.02.40.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 28 Apr 2020 02:40:34 -0700 (PDT)
Date: Tue, 28 Apr 2020 11:40:32 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jonathan Bakker <xc-racer2@live.ca>
Subject: Re: [PATCH] pinctrl: samsung: Save/restore eint_mask over suspend
 for EINT_TYPE GPIOs
Message-ID: <20200428094032.GA23462@kozik-lap>
References: <BN6PR04MB06600C848C2C1531F73DAD7BA3D10@BN6PR04MB0660.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN6PR04MB06600C848C2C1531F73DAD7BA3D10@BN6PR04MB0660.namprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_024038_418615_D7DFA030 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-samsung-soc@vger.kernel.org, linus.walleij@linaro.org,
 tomasz.figa@gmail.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, kgene@kernel.org, s.nawrocki@samsung.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 25, 2020 at 04:10:46PM -0700, Jonathan Bakker wrote:
> Currently, for EINT_TYPE GPIOs, the CON and FLTCON registers
> are saved and restored over a suspend/resume cycle.  However, the
> EINT_MASK registers are not.
> 
> On S5PV210 at the very least, these registers are not retained over
> suspend, leading to the interrupts remaining masked upon resume and
> therefore no interrupts being triggered for the device.  There should
> be no effect on any SoCs that do retain these registers as theoretically
> we would just be re-writing what was already there.
> 
> Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
> ---
>  drivers/pinctrl/samsung/pinctrl-exynos.c | 9 +++++++++
>  1 file changed, 9 insertions(+)

Exynos4412 (Odroid U3) also did not retain the register values. SD card
detect interrupt should be affected.

Thanks, applied (with CC-stable).

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
