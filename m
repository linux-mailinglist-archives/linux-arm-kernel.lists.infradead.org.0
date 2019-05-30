Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9944D304A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 00:15:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2a5NzSoUMnKr2NZzwGriXeHo1gUv/mmCcMtkF3Gxae0=; b=CslkdZTRCaNfJW
	D2Dn34NhoTl02Fkksmf9N0YoJrekcdBbVFg55158O+x/0EUyFx+oPpGjpcodJpqFEQ/QD5FkvOFVJ
	ep/GoS2iHkUrWoLHZ47OLPgTTt+jZ7RRPdkD9aEVZ9bpK+MzO/AwSGAE2w/bOisj3BFkAxRhmZqmy
	ifh1le3HFgP/fy5CdY7WEfPFA/qx4SIEsfVERJxOr0KWbbh4pgluJQG6IYki0AJHKcv/mZUdH+T4T
	rVWqKiedhmue+4APvFdX4ncq7JtD3knd3WvH41GS6zIWEXPHNSpLGHPuH+i6ZPRILGdJJ2iXe6CoI
	ZZKu0GBScgiIyRy6QsmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWTKN-00030x-5y; Thu, 30 May 2019 22:15:15 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWTKF-0002i9-Oa
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 22:15:09 +0000
Received: by mail-oi1-f194.google.com with SMTP id v2so6221329oie.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 15:15:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=esfrFMZGksDh8a9cO+oFEVkOyToxeVgjGVajp0t5uMA=;
 b=Q/ZGklNNtTGEQ/j9XkXyXwDhxv+W5D64HU8/+F0om3g5crhat1p2+kxrpomeTsU/uX
 TZ7ctS9bn5UcQ77MD9dg46uyP+cl2dfGS61dWPtdBgOWnw+MGPcA8NfZ6KyBOOwyjHCs
 WmZdFUwvwqvypU3394qPlAcENiYhwSeTvcOk1CgXURhoYurSiOBrv8bGlkFCKDAR+SfP
 bs0qYwZ04KSUefDjoTpANV6x9DnfcTN5I1tXe512pTquxMaGcW3i6gmJipEfEz6bXbsW
 6YBOIRlTYAjd77gZ2R9iMzVSsOnvjdWLJVZdk/p839RCX9GujoDS3qRuNcNnIUEuTZNg
 kk4g==
X-Gm-Message-State: APjAAAWt9p1BY3JmN0ZSbjhHdR3Dmg3aLjc9gy2mpKEkc6knDIZp7TCc
 y5kRvHJ8U4dwaLxuY3VzHi/JL4SP0g4=
X-Google-Smtp-Source: APXvYqxzTWqOkmPYNWRhPI2fGQQMe6bg7vynUTI1eeaVxGyLWQXiSRz6JeqT7bANh1zzES6OR9cRQg==
X-Received: by 2002:aca:7250:: with SMTP id p77mr4289270oic.103.1559254505537; 
 Thu, 30 May 2019 15:15:05 -0700 (PDT)
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com.
 [209.85.167.178])
 by smtp.gmail.com with ESMTPSA id h67sm1251417otb.24.2019.05.30.15.15.03
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 15:15:04 -0700 (PDT)
Received: by mail-oi1-f178.google.com with SMTP id y124so6242072oiy.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 15:15:03 -0700 (PDT)
X-Received: by 2002:aca:ea05:: with SMTP id i5mr3971031oih.51.1559254503293;
 Thu, 30 May 2019 15:15:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190530141951.6704-1-laurentiu.tudor@nxp.com>
 <20190530.150844.1826796344374758568.davem@davemloft.net>
In-Reply-To: <20190530.150844.1826796344374758568.davem@davemloft.net>
From: Li Yang <leoyang.li@nxp.com>
Date: Thu, 30 May 2019 17:14:51 -0500
X-Gmail-Original-Message-ID: <CADRPPNTn7onrpyicx_ytdaDG4q3v4t494zYetkHrT808RsOByA@mail.gmail.com>
Message-ID: <CADRPPNTn7onrpyicx_ytdaDG4q3v4t494zYetkHrT808RsOByA@mail.gmail.com>
Subject: Re: [PATCH v3 0/6] Prerequisites for NXP LS104xA SMMU enablement
To: David Miller <davem@davemloft.net>, arm@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_151507_800544_934CA95A 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: madalin.bucur@nxp.com, Netdev <netdev@vger.kernel.org>,
 Roy Pledge <roy.pledge@nxp.com>, lkml <linux-kernel@vger.kernel.org>,
 Joakim Tjernlund <Joakim.Tjernlund@infinera.com>,
 Linux IOMMU <iommu@lists.linux-foundation.org>, camelia.groza@nxp.com,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 5:09 PM David Miller <davem@davemloft.net> wrote:
>
> From: laurentiu.tudor@nxp.com
> Date: Thu, 30 May 2019 17:19:45 +0300
>
> > Depends on this pull request:
> >
> >  http://lists.infradead.org/pipermail/linux-arm-kernel/2019-May/653554.html
>
> I'm not sure how you want me to handle this.

One suggestion from the arm-soc maintainers is that after this pull
request is merged by arm-soc tree.  You can also merge this pull
request and then apply the patches.

Regards,
Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
