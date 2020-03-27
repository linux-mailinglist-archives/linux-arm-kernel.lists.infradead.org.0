Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3D019560B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 12:10:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p6zTQziNeSoFFb61kLrDcSsuHEkwA8MJ3g46wFWmOr4=; b=AHEJRdZY6/H3dK
	HkJKuzaQX5yGedWz/rwnq1pSQlLIFxXwfCr2He8Xud0bC2m58eq+rQRM9F4YkcPOooHXGnYUjvuoE
	X71N/WpRdmN/DUtpyCb2dz5rEAZh+6qq31As4qqOMA9Pj0QuAjm7IEI3t0ibZDO0kK5KqjjbWupMm
	iDfbhaoXGehLC41CBHUrOXJSPmzBez1rEzVJ2AkndZOtx1al8oZZKm8sxXlVzY+pl7oMiYobdVK2h
	nuLAXZOpgmD4ksKbXzDdC00VcPfc7EgyC0RyOvr2m3ulw/y8aVDgepYiZ+C/a04f/GrVpbrDJgPSx
	V7KcB41elNvdQzHcPfKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHmsb-0005OB-14; Fri, 27 Mar 2020 11:10:25 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHmsR-0005No-Rw
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 11:10:17 +0000
Received: by mail-pl1-x644.google.com with SMTP id c12so495335plz.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 04:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TGLdq/U95WT3HxV3sUtO3DHH/5EDIKVtU9/EIJiiqA0=;
 b=ooDVIr/nQdq4AcQGTXHjjO6dJVbi51GdNjzGeNh99xO+1hi1/ufg/eevXiM9cQglkE
 bq8AimnGS9XIa3R5C7rGG27gevdg7jlS9Hfs/RnoGemFpecapjdhMLotbInDyaqB58v1
 dl3iwezCYpzJ+Esk/AZXIa4JyrK6WGhHYBr+H8zFm/cCgSF0Hu1k8PWJCpQjPQx8zMJa
 RVAo25zw5VyZo9g8lpSkqLIgWsqc1+i89AgE8K9FsIUu/81l/tnEu92fPH4gofuv5UyC
 cJDpds+OZCPwOeBH3FDRYuL/+sDCN5kQK/rBM6tfldSUKLENsnNKFOlG5Sfs4l2qAFJP
 3yOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TGLdq/U95WT3HxV3sUtO3DHH/5EDIKVtU9/EIJiiqA0=;
 b=ETTkLBtLxp1XQ5DCRnbOLvy6qhp8xcBonboCG+dY59qfRQhcEP6TfNp1M3pal4KSPE
 Ahf0AaFRy+huIG47hMVS8tF1eglnJwFr+NC4Bpz7rL2IUm5HczjKvpBcjLAgBd2PN2Ld
 CQgTangSEEDz/Dep912thoTycf95p9O6/tMPXZjkG5IqcwOy9BUsRW08Bp+95dypy0Lp
 GLI9D5M31515Nj9FbZn67Tqn7ZV9Dvqhp+ug5Tlz1G6ncL0xmk0JjLOly1ZMV2uYAVdT
 E2k9eGyuQk7NmmUYmZGkttyMmjV2UXjo5CHqVUaVHpqbQFNrcWIFMA/4F1dLJhivDeip
 thPg==
X-Gm-Message-State: ANhLgQ2XC86jqeq6svvqv7RVBPqopbYBaXBLTHsCgGDh+La5ltI6B5XP
 tnBmfFhAdaulzjySI2jviN8=
X-Google-Smtp-Source: ADFU+vvx6xgRoCFobHljQubBlxi17gVHoQR1r82g3QG+ZJ1M3ewEJcTwpCSIhlcpqaaNY2cX9bcmNg==
X-Received: by 2002:a17:902:8a81:: with SMTP id
 p1mr12498205plo.284.1585307415138; 
 Fri, 27 Mar 2020 04:10:15 -0700 (PDT)
Received: from localhost ([183.82.181.40])
 by smtp.gmail.com with ESMTPSA id x24sm3866628pfn.140.2020.03.27.04.10.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 27 Mar 2020 04:10:14 -0700 (PDT)
Date: Fri, 27 Mar 2020 16:40:12 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v3] ARM: replace setup_irq() by request_irq()
Message-ID: <20200327111012.GA8355@afzalpc>
References: <20200308161903.GA156645@furthur.local>
 <20200301122226.4068-1-afzal.mohd.ma@gmail.com>
 <m3ftepbtxm.fsf@t19.piap.pl>
 <51cebbbb-3ba4-b336-82a9-abcc22f9a69c@gmail.com>
 <20200304163412.GX37466@atomide.com>
 <20200313154520.GA5375@afzalpc> <20200317043702.GA5852@afzalpc>
 <20200325114332.GA6337@afzalpc> <20200327104635.GA7775@afzalpc>
 <CAK8P3a0kVvkCW+2eiyZTkfS=LqqnbeQS+S-os=vxhaYXCwLK+A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a0kVvkCW+2eiyZTkfS=LqqnbeQS+S-os=vxhaYXCwLK+A@mail.gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_041015_904655_FFBD1DFA 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

On Fri, Mar 27, 2020 at 11:55:36AM +0100, Arnd Bergmann wrote:

> To make sure I get the right ones, could you bounce all the patches that are
> still missing to soc@kernel.org to let them show up in patchwork?

Done.

If it helps, i can send the same patches w/ tags received as well.

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
