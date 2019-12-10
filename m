Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10BEB118B84
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 15:50:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KGWwQz5RsrC3PR4oxXQbLzR3uYNmlPgaRHZMGvIFEKQ=; b=ZdGoAHcP3ZUS5f
	gNYROvlOvY0eCTo5uZ3+SXHqdkW4uw2GqCmmgCnqIJkVdNB5HDbQbfnciFHWZfQTIgg40p3tl1pyj
	IXihX+KQbJhnfKi7nXPX6cQ5ql4Oq4ALBKBv60jJaYNCsIiplPmtz71lPMsz/Joirve9pmNCTQpWQ
	I/w3kpzkm3meFQvxxC2KZJeTi68kL70K72oCFgp8m2wqepJim0BeeYUXvvM9wHRBIok7gOZRf2oxh
	DcqwmsCay4cxDRrMYhpl8KqW9CsBbg89S7Caw6Rn9+lxN3V9WDzBYDzOqcdajhJSgWN+v4lp+uONr
	q1Qj8bBifRKF3W/XcyzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iegqf-0004rP-9o; Tue, 10 Dec 2019 14:50:49 +0000
Received: from mail-ed1-f42.google.com ([209.85.208.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegqU-0004qc-PH
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 14:50:39 +0000
Received: by mail-ed1-f42.google.com with SMTP id f8so16236449edv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 06:50:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=K5Q8z1lZuFpZiVpIxPLlK/TX3uShRnvwUeaP79l8aCQ=;
 b=MTIY3Z07babAYeJCUX2U026CHyx2aBrVXDZBOXIlrxA+97LjdYFgYO7IqEGLDQj+PA
 +d5xwpAefWMecoSSknMJNra/vxC8ijQfbfLRfK/l7ywhAnH/bLeD0AVc7T+prTiKSIYU
 d0S8liP8Xw++/041D2HTmX7/RhJa0cnVTQEdKvlko9n/A7lb3X7Bhx7/DMmBOht5kHvB
 nfDS7vZQqPMy0kBATEgXE5svcfAyg7N/3EWizXQqjKDg21B9H+nf/5frqN1m4fs7Ab4m
 IN5xLIBjPnDa+hLlxn82bnnTdy5wQ7z1AEiZM2Ai/AlMs8SfwKMVUpLHQVDhTZhZtBJC
 qCfQ==
X-Gm-Message-State: APjAAAVcGYFgKkyrbwJKcDfvFdnef6OEfO1ICBh39LU3/lJbpF1J/wGz
 b+bm9ZwZu1JqgYMnWs1f0Hc=
X-Google-Smtp-Source: APXvYqwuN01ZSvEFWiSad17awZBF1YnGwKo55xzlbJfwiNjZIBopYV+8aRQtqJcQFqLeXFumyKiHsg==
X-Received: by 2002:a17:906:1354:: with SMTP id
 x20mr4101913ejb.279.1575989437156; 
 Tue, 10 Dec 2019 06:50:37 -0800 (PST)
Received: from pi3 ([194.230.155.234])
 by smtp.googlemail.com with ESMTPSA id dd17sm88984edb.9.2019.12.10.06.50.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 06:50:36 -0800 (PST)
Date: Tue, 10 Dec 2019 15:50:34 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 04/10] tty: serial: samsung.h: remove reset_port callback
 from struct s3c24xx_uart_info
Message-ID: <20191210145034.GC11222@pi3>
References: <20191210143706.3928480-1-gregkh@linuxfoundation.org>
 <20191210143706.3928480-4-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210143706.3928480-4-gregkh@linuxfoundation.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_065038_816537_BCFB5B5A 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.42 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.42 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Shinbeom Choi <sbeom.choi@samsung.com>, Hyunki Koo <kkoos00@naver.com>,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 HYUN-KI KOO <hyunki00.koo@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 03:37:00PM +0100, Greg Kroah-Hartman wrote:
> The callback was never set, nor called, so remove the pointer entirely
> from struct s3c24xx_uart_info.

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
