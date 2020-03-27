Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB5519565C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 12:29:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2HKlvLl/u/sqrEhRzVOv7L+f9hozv+vLAKhByYu/nG8=; b=RDjsF757kGJ6HJ
	feEMBnXeeRZ4rXxOd8Q0GNEzv/7BSJG6PZLo11xZ5wg3KCCbFOMWLySWXhsDZPTblOocmRAAIFW6/
	NQaJTwcBbQNYWPIW8dq/uQuDxsSX5Ap+KU9c1oxJ7HphxJcU/ZU6IuZFXD+CxJzwtu69nroj04e/x
	h5cqOSpaygNWwFue2MFZ40Vjw1slTRW+e1/uy9LlZNJJEcORtqGTVNN44PQhWKaJllrGb4TK9nlAt
	OldcOKprbMOXNN5U3FKf2YkW8iAMFkZTh4ZBQJXTKjynErgjfQ6fMBFTAp/IOHxb8mikjpKRD2jAu
	I3mfUYOsaK8PY9CkaYzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHnB2-0004k3-4j; Fri, 27 Mar 2020 11:29:28 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHnAs-0004jI-Iy
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 11:29:19 +0000
Received: by mail-pl1-x641.google.com with SMTP id g18so3364217plq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 04:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=qcf1rNOw05Dfij57btjIVq6nb9rSLDxT4zXKFbFD/Fs=;
 b=XxN7gRGD6bc53fQXcFgCxiesTztZx0yxgVvgYr4fj8ahRtsdeCpH42hxR/oncDUG2E
 zppmEVJAoGMIjPcpRXfjGvOA4zYUpQBbM6Njnd8APE9yuPv9/LkJu3MRx9q1tWOgyabH
 bSzPt2ve5y2Ermj3lIH5HZ62McrLIV3qxei9RwI5HagI/onBBUavweIe4lRx+dczwL8p
 87XINGrRWLyNuFKhjzru+HcyVxrCTlS+2AICL48fqV0DNEFtdT+mN1oU/H74Nytog1El
 UFyMY5WMbm/7ApqO+wKU3vcIFAAoVzRDrOAndCcNdV3jcdPx98iKcTMtLo4WsP80VbV9
 gvKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qcf1rNOw05Dfij57btjIVq6nb9rSLDxT4zXKFbFD/Fs=;
 b=trO03oFRUpNJfLTmxUMCVYLxhJayx0Oo9mT3ud9TuQ3Amb5OoYsBn/DtMmXUnCANxC
 qXI8cPhCZhpeNXCY1hksTwrwGJFr7Fge2rbvT3ohFRZpo+e3HwTQ2iaeixO/4+Lgws2B
 Q74YL8rQwD3CSZFUEGlLFhMXunahJ2LFtHVcDo5rFp1UJkIZuxztv1GU744D2enwpPZ+
 b42qp9BbkONoxb8kmlbrddDXDy2bevsbykxznbpcsJwcuzaMZTL+xF/hYodBsPQLK7n2
 T62ejx4cTMAlSUha79YBgvKSPCzHFohqdW50iSUrU/H71u85Wqx3GuZTdWEzAXc2XP81
 kg+A==
X-Gm-Message-State: ANhLgQ0UJLyt91tVKWA3f1IAzhan9xEt2iU4scrbWrcbxtsi/dCPizPc
 ci/nDROZbUH8uQ64U2iJlY4=
X-Google-Smtp-Source: ADFU+vvSIQ1WaAe23bl2bGWcfsCpE/MOKlHN075cVB1FcEc48YZV4/DhsITy6mvXtP65NBJWZU/rYg==
X-Received: by 2002:a17:90b:3606:: with SMTP id
 ml6mr5353202pjb.172.1585308555602; 
 Fri, 27 Mar 2020 04:29:15 -0700 (PDT)
Received: from localhost ([183.82.181.40])
 by smtp.gmail.com with ESMTPSA id h95sm3530804pjb.46.2020.03.27.04.29.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 27 Mar 2020 04:29:15 -0700 (PDT)
Date: Fri, 27 Mar 2020 16:59:13 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v3] ARM: replace setup_irq() by request_irq()
Message-ID: <20200327112913.GA8711@afzalpc>
References: <20200301122226.4068-1-afzal.mohd.ma@gmail.com>
 <m3ftepbtxm.fsf@t19.piap.pl>
 <51cebbbb-3ba4-b336-82a9-abcc22f9a69c@gmail.com>
 <20200304163412.GX37466@atomide.com>
 <20200313154520.GA5375@afzalpc> <20200317043702.GA5852@afzalpc>
 <20200325114332.GA6337@afzalpc> <20200327104635.GA7775@afzalpc>
 <CAK8P3a0kVvkCW+2eiyZTkfS=LqqnbeQS+S-os=vxhaYXCwLK+A@mail.gmail.com>
 <20200327111012.GA8355@afzalpc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200327111012.GA8355@afzalpc>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_042918_650784_9CFF14A3 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 Tony Lindgren <tony@atomide.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Lubomir Rintel <lkundrak@v3.sk>, SoC Team <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Krzysztof =?utf-8?Q?Ha=C5=82asa?= <khalasa@piap.pl>,
 Viresh Kumar <vireshk@kernel.org>, Olof Johansson <olof@lixom.net>,
 Thomas Gleixner <tglx@linutronix.de>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On Fri, Mar 27, 2020 at 04:40:12PM +0530, afzal mohammed wrote:
> On Fri, Mar 27, 2020 at 11:55:36AM +0100, Arnd Bergmann wrote:

> > To make sure I get the right ones, could you bounce all the patches that are
> > still missing to soc@kernel.org to let them show up in patchwork?
> 
> Done.

Sorry, i first forwarded, after that i bounced all, but not able to
see the bounced ones in patchwork, only the forwarded ones.

> If it helps, i can send the same patches w/ tags received as well.

Let me know if if anything more needs to be done from my side.

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
