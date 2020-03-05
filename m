Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C25179FAD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 06:56:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NuP6RcLUEiSOYWUr3OHVsRDU/W9HFXBENH09o9fteX4=; b=gmRAbbxoMkuCyU
	uI1zNgTc/DpibfLKkEpBNiSqNhxaEWSwi9TFbK497BpSMJ7DaSVdCHlD8Gy8n3/VMr0BO5w3Vo5Wo
	Ck/en8t0bDrBc5FCCPauH2549G8Pmiz7f1DUpggplJ2GTfMf0ag6qOeEPQYqhqmU/Yd1NwhBu9Hnx
	s1VNF1OBDhe25Apvsu/DNRUiyqRj0NcHi5RsFz6QI7OX6TXdiesSmSeq0Eo7SDT2lE7pAxQD0Fm6V
	SHHBRpUO2MCJ2irubAxsi5EbSK/ZXGK/TG4JfTwB56fYGi/7eypG76Ic/Ao+WVrB2L1sz9Zl6O6zq
	k17jWtPRW1e/qybaWYzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9jV6-000731-2y; Thu, 05 Mar 2020 05:56:52 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9jUq-0006ye-S4
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 05:56:38 +0000
Received: by mail-pj1-x1043.google.com with SMTP id l8so2008698pjy.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 21:56:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kM7p6iQbBTR9YfCmEPNGr14KUbGdbLJ4CLDWGt5kFJE=;
 b=HlO3Og2d5uy8+jp2KNfqeoyI4ZzMgtcXv4THIEFH85qz7Iq3CW0zjGMg2ETeHkdf0V
 VfmgUBsyW7Jv13z0mcKXYBkdDBaLI54IS0UyeQlJLstHLl5tFiobCZpnJiZsTvjy/xtr
 IitH9OrIam7YtS4J0jySlx3bJ1+oRszQjn4O1QAdYKQURxzKhQyUjCew0o5yCHtWSLGB
 8P/iAqypxNaRFRkV7JXfP/9XozHsM7QnUa4ZQTnBpz3bMdPFKA5pQbcbOsUCeBNzBmzZ
 ElL/a94ot2WKiPA5nfZj8I7tze2spp6X99eodAnnRLaPSfDMrPH245IVIILue0GP4HdF
 Qp7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kM7p6iQbBTR9YfCmEPNGr14KUbGdbLJ4CLDWGt5kFJE=;
 b=OPhyjX+bJf7IuntZLa9amCUT8/wjFsKiTsI0cWOFZoB13ZNJ38uEXqO4yG9TWs2nTO
 a9ncbObgqAn9WFLs81+vA0uv3CU6H2IIUvcSYd/59Zq7nmqmoRxSPZ0xQnUuhwRHbPeA
 9S7nZ/4sTCkPZYpmCfQzufJozjF6BeOxtGopEjKRLuAUe3DrpWkVSOCmmsHXjUndDqCt
 F9vnzeK8YmF/Qr+9wY6G6iKqPJntvJitZwrLm+soX8L6ajgHdsPaxWq4Zje+jWcV8CYY
 aM0hc1srOd0GhJL5DU77xj6OOeYhuxCF31UuXEe1T6VyK5YkqQ1jjjdhWU+dOxJZCzeF
 oZ5g==
X-Gm-Message-State: ANhLgQ0DcuuMSsj8P1C3l/Dv7ctnzdN7WokMuZTk9tY9bwquJXvL4a9J
 ohOsL0vMYws8jQ+1AO5sS3k=
X-Google-Smtp-Source: ADFU+vuE/IWJczM8wvkwqfTmwzFsFPEGEEsXubYB4VEY+7Kg1OaMFur89CTyXpNeC1VHckqxBzMhmA==
X-Received: by 2002:a17:902:8e8a:: with SMTP id
 bg10mr6325624plb.219.1583387794925; 
 Wed, 04 Mar 2020 21:56:34 -0800 (PST)
Received: from taoren-ubuntuvm (c-24-4-25-55.hsd1.ca.comcast.net. [24.4.25.55])
 by smtp.gmail.com with ESMTPSA id m59sm4784883pjb.41.2020.03.04.21.56.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Mar 2020 21:56:34 -0800 (PST)
Date: Wed, 4 Mar 2020 21:56:27 -0800
From: Tao Ren <rentao.bupt@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH] usb: gadget: aspeed: improve vhub port irq handling
Message-ID: <20200305055627.GA2296@taoren-ubuntuvm>
References: <20200305023859.21057-1-rentao.bupt@gmail.com>
 <8a9033d5e76951f5bec39531c5d0e0d6ef963ee5.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8a9033d5e76951f5bec39531c5d0e0d6ef963ee5.camel@kernel.crashing.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_215636_919066_257AD700 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Felipe Balbi <balbi@kernel.org>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, openbmc@lists.ozlabs.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Joel Stanley <joel@jms.id.au>,
 taoren@fb.com, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 05, 2020 at 02:35:08PM +1100, Benjamin Herrenschmidt wrote:
> On Wed, 2020-03-04 at 18:38 -0800, rentao.bupt@gmail.com wrote:
> > From: Tao Ren <rentao.bupt@gmail.com>
> > 
> > This patch evaluates vhub ports' irq mask before going through per-
> > port
> > irq handling one by one, which helps to speed up irq handling in case
> > there is no port interrupt.
> > 
> > Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> 
> Looks reasonable, but did you try a find_next_bit() loop and whether
> that's faster ?

Make sense. It should be more efficient especially when most ports are
idle (and I guess it's a common case). Will try and send out v2 soon.


Cheers,

Tao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
