Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78EDE15D3FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 09:44:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WGoCMdWR7I3OWSOdxpUzh73Vfrty2oz6GP22dqGXrOQ=; b=aWDM9Qzqd1uq4h
	YGDdzZImOYgQi7sTDAfKScQMoCgrDkPH+NWYnrZ4WYv9Gi1KTO5hcvr5d4aAJ2N4Cbn1CC9Ukqpuo
	WVxTVKLgQkzwBoM8AWZMKOXRJ17mvK7vcBtWOej3An1PoNmhKCGljK5EGzSfB4g7yLr9HhxruNPlc
	PBtdb+SuY/SFBYZW7N05U9yt4jUivuB5b44oSYB89U/08NESR/CA6rsuZIzF1X7+u7Y3ouMsoq5ii
	xO1by036QhbPpUbmsuo0sSfUWWiCp4rjE8T6jDgwL8KB3HewuZPYZi+sDVJqAG+E6SbLeQwswf8oB
	ylOweDfy1gtBYBTwQUlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2WaF-0006UQ-85; Fri, 14 Feb 2020 08:44:23 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2WZv-0006Tn-TX
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 08:44:06 +0000
Received: by mail-wr1-x443.google.com with SMTP id g3so9901592wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 00:44:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZXq1qTTEJGxPRttgekd5c81xjN3eOF8wuB+0NRpZEVw=;
 b=PPZBvwhalZ1ByZiC5h4/2jZ0bic0Xxq4NIJxlOqDuxVEzVLkWTlypUMH4BF2ZY1GhA
 YLQwvs062k26eMuXSkUoQEdIVSVJ+yA++89VxJW8rgY7d/YRrOrwGpJ5JGEWLotutAF0
 cv4LS6M2UJOxvrkh/m6bOuIhPrL+dg6Wa9Pl7kV/9INMi9GrszTM0RU1ujwB5hp4cFR6
 0FmHv3z51S3uElm0MyKZQ+R1wXGCf9AARlEJyczDobDoX8oU2r+G1PMVbsa1WLCxMZpU
 gVnPfJ/OVnWYLH/ApiOs8J74UEMIyBostXo+Jot0rNsM16fieYijlHv8+zTU/6b1mdZy
 U2Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZXq1qTTEJGxPRttgekd5c81xjN3eOF8wuB+0NRpZEVw=;
 b=T+/rtlP3dPEMX6OkUjzdtK79DjkI5gzfuNEhO3AbCbUoG26mguUP1kWf6CGDooAPkU
 gf1QbZSP4M8f3QAUYtWlILmboCt6Tk9i2rgujRY4WS8PKuozzjvIZ5Ja0I8z1QPGj+bC
 6ANH5OpZ85ZY1KDAm246bmTsrxW3cx8ukbfuVj0mWBsPzGjeN23h2UqehDdmoDByUOku
 1N5f+EPRRNCjL49dvAP2clfnKDq12SWZMJIUk4mgPlZUN3P2VvDnCuJUlhBv6CODjhJ3
 grvGJWBhfznPWRitAsyavoI/rYdEGN7hnjMeX0YkEm3X5MoueA/XUo5hadgfq+72+9bO
 s2Dg==
X-Gm-Message-State: APjAAAVNmjS89CZCRHjbByVG5mmOKvbRaCIonSvUyZH31anWG/aZhAe7
 6CW33At15VE8fJg9BWBoUlA=
X-Google-Smtp-Source: APXvYqxS/TScRSLlqJlyhr//zA4jaFbzxneoXDXkbl4duj/BRqbmb25+lDDvv1nUh4I6g8T3WVp2Cw==
X-Received: by 2002:a5d:4e0a:: with SMTP id p10mr2868980wrt.229.1581669841655; 
 Fri, 14 Feb 2020 00:44:01 -0800 (PST)
Received: from kedthinkpad ([213.197.144.54])
 by smtp.gmail.com with ESMTPSA id s139sm6677722wme.35.2020.02.14.00.44.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Feb 2020 00:44:00 -0800 (PST)
Date: Fri, 14 Feb 2020 10:43:58 +0200
From: Andrey Lebedev <andrey.lebedev@gmail.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v2 2/2] ARM: sun7i: dts: Add LVDS panel support on A20
Message-ID: <20200214084358.GA25266@kedthinkpad>
References: <20200210195633.GA21832@kedthinkpad>
 <20200212222355.17141-2-andrey.lebedev@gmail.com>
 <20200213094304.hf3glhgmquypxpyf@gilmour.lan>
 <20200213200823.GA28336@kedthinkpad>
 <20200214075218.huxdhmd4qfoakat2@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200214075218.huxdhmd4qfoakat2@gilmour.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_004403_978785_309FB511 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andrey.lebedev[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: airlied@linux.ie, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrey Lebedev <andrey@lebedev.lt>, wens@csie.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 14, 2020 at 08:52:18AM +0100, Maxime Ripard wrote:
> > > This will create a spurious warning message for TCON1, since we
> > > adjusted the driver to tell it supports LVDS, but there's no LVDS
> > > reset line, so we need to make it finer grained.
> >
> > Yes, I can attribute two of the messages in my dmesg log [1] to this
> > ("Missing LVDS properties" and "LVDS output disabled". "sun4i-tcon
> > 1c0d000.lcd-controller" is indeed tcon1). And yes, I can see how they
> > can be confusing to someone.
> >
> > I'd need some pointers on how to deal with that though (if we want to do
> > it in this scope).
> 
> Like I was mentionning, you could introduce a new compatible for each
> TCON (tcon0 and tcon1) and only set the support_lvds flag for tcon0

Can you give me an idea how that compatible might look like?

		tcon0: lcd-controller@1c0c000 {
			compatible = "allwinner,sun7i-a20-tcon", "allwinner,lvds";

or

		tcon0: lcd-controller@1c0c000 {
			compatible = "allwinner,sun7i-a20-tcon", "allwinner,tcon0";

? Or something completely different?


-- 
Andrey Lebedev aka -.- . -.. -.. . .-.
Software engineer
Homepage: http://lebedev.lt/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
