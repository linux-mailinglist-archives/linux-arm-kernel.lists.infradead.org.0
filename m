Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FF4F83DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 01:05:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hDX3g4LQ3H4fAJaGZFWzBu4Hn68cIvsjBX7uGlIrd/I=; b=eVCC6F3txb9LCB
	zPBKvoq9TkUSvFoUFXFxYbmc3dbLRYx8mvLEcNWcJYxl301RIJo7ixwUyqORl1bLSLJI1YJtuBo1g
	yCwTwPwDdvmbCkdQlJ5Vem9Tq8yJ+PprGsqWWRLNwfAS8RwXMjG/0qTFbF26vl8L/kmcF5lr/X8Rs
	RRgfK9J79d+ege6q9X1v14B4B3UOvm174ZzxsZkt8Xz3y1ZHoFC3rQlQyiIa/DwHMI06+Nj3UC+ky
	NsXVBoew0riGDamORCE7crFW9fRK+9i5wRPAP6gRKEiBGw8M5p3NM0XWGpge6z1uQzvcIafG2AULu
	4uPFcUUEdu+ZggoDSlig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUJgo-000156-8W; Tue, 12 Nov 2019 00:05:46 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUJgg-00014n-PW
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 00:05:40 +0000
Received: by mail-pf1-x444.google.com with SMTP id z4so11901236pfn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 16:05:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6KOnCMXCOiPQLfi45fFcE0+C3er2wheoIsrf8843ny0=;
 b=OLPKNrMFGFF7U1922nn0E++/tjzkZ0mNS2hYpYmYINmWigGDYrRdqdSag3Fy1NIbuM
 hm/XRybSWrx/kxgDrRUknQ51q8xz8P8pQu8rYB/MS+N6zl/EhWPv51Qn7qEUe6/r5/UT
 2tQLKCDJwLDs2yluQKt57CrtXP18B0e48SxH7DUXVVxDN/epgr1NTiP6HQ7PhVcZ7pid
 uc0F3STd5z+Y9PWakN7Xwl3yLygrzHOpJGA38O35pkkafjEJDG+tmKcIlJXyJNqqAdEM
 vAROblpNXiwZdlxIptgSmh3FWkZv6zhonPvL9gT9Ddrbtwxw+Dbwdnv2FCXPoXRn8W3h
 VcrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6KOnCMXCOiPQLfi45fFcE0+C3er2wheoIsrf8843ny0=;
 b=jZdFV7PPeif1LAD8CPa7x7b3gvP29gFE/tBXHPQbISh2EeWeb319D7zGlizEF+TkW7
 2O+j6pjxstNien7FoG5itHvGWALGZBxV8SweLK7bmd6i+zX88BiPMa3PePClHNuTtvJt
 Z03KwzSOoUyEaf42TMpAcnC+zjmGEijW0tNmz3wwhRiTIGb2iKHp4GJ/xQXuKZE18HLG
 DQZIZwnBOlcuqCouoXkNt6OsP8il5f0bRlLEZKlbHj7y9dp6jQURuDZGssSgjOrjOWAm
 reMYQV6lAxDqwWCdRo0IfzZRXKDGfQeJ8PMcGIOHefjxDIckinffpTLDI0flCdG+yyv/
 xXLA==
X-Gm-Message-State: APjAAAUXkQdog+wfTWsZWRYFmxcXNIU7q/806tA1ULbQIuBn5mee6UDO
 qO20BnrAUZMZyu2h+vV/xSk=
X-Google-Smtp-Source: APXvYqzXZdmbvuUorKINeW0zhCwHHDdLsKqKa7cZjwYSCyOGWKC/69DcZIZRO7sBDnAEay9pLOkCIg==
X-Received: by 2002:a17:90a:bc41:: with SMTP id
 t1mr2349371pjv.89.1573517137516; 
 Mon, 11 Nov 2019 16:05:37 -0800 (PST)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id f13sm20131016pfa.57.2019.11.11.16.05.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 16:05:36 -0800 (PST)
Date: Mon, 11 Nov 2019 16:05:34 -0800
From: "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Subject: Re: [PATCH v2 3/5] dt-bindings: input: tochscreen: ad7879: generic
 node names in example
Message-ID: <20191112000534.GA192119@dtor-ws>
References: <20191026090403.3057-1-marcel@ziswiler.com>
 <20191026090403.3057-3-marcel@ziswiler.com>
 <20191030140455.GA4544@bogus> <20191030231205.GI57214@dtor-ws>
 <c200444ba450d7884cd26e12163b68db6db63725.camel@toradex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c200444ba450d7884cd26e12163b68db6db63725.camel@toradex.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_160538_829070_845CC141 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "robh@kernel.org" <robh@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 08:58:25AM +0000, Marcel Ziswiler wrote:
> On Wed, 2019-10-30 at 16:12 -0700, Dmitry Torokhov wrote:
> > On Wed, Oct 30, 2019 at 09:04:55AM -0500, Rob Herring wrote:
> > > On Sat, Oct 26, 2019 at 11:04:01AM +0200, Marcel Ziswiler wrote:
> > > > From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> > > 
> > > There's a typo in the subject.
> > 
> > I fixed it up file applying, thank you for noticing.
> 
> Where exactly did you apply this? As I still can't find it applied
> anywhere. Thanks!

Umm, to my internal queue *blush*

Now applied to 'next' branch and pushed out.

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
