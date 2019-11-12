Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D933FF8A21
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 09:07:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=empLwyxzzqWYmt8zzs/3Ei5dSa76R/s/+gGH+EoQDaQ=; b=CtjtMfrr/paLc4
	P7S3GS2EHxngFr7rZ/hQ0ne/cNyPrjgEVS3v7JX8NFiHIPSfTpeFXHeMKJtehg0qFW+mbtZ0qbSX0
	CubAZarXzMsM4opB5VeZi9So1eHoK+A2u8bIMqnfN1/FrtRudsDz5osknpNeH/aCC+XTORZ3uqJIz
	KQvDmGKDc+1vHDZDb+dmxyaa5OmmJE8dYjgjSnrNP7AjRie5Txvchl9qhTFMdVvIj/ex/d5p0dqhn
	hw+gASbbmrtsOLHRSg19Uo30pzCdkPAEd7kPekBvuzn6vY84uLegWMvLhf8Nf9HNam7P+JfUXm7+w
	EnyTwVLexJcGOsyxMhVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iURCP-0005CS-L1; Tue, 12 Nov 2019 08:06:53 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iURCF-0005Ae-7F
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 08:06:47 +0000
Received: from mail-qt1-f174.google.com ([209.85.160.174]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MIdNt-1ij04A27k5-00Eer7 for <linux-arm-kernel@lists.infradead.org>; Tue,
 12 Nov 2019 09:06:39 +0100
Received: by mail-qt1-f174.google.com with SMTP id o49so18822784qta.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 00:06:39 -0800 (PST)
X-Gm-Message-State: APjAAAVM9zHnMuHBYhL1hkBKlehfDPFMwrZ103BhCCGIJdRY4QeRtCNI
 v3SL8uAwKMqfK1IMjooiHNdH7MKdtU12F0IQli4=
X-Google-Smtp-Source: APXvYqzdm/M1pFpfkmeJ966cvuKqdZng0AcL0hQKs4QX2EH8UkeViUAPx1/kZ0x+CF/V302usIEzAmECJ4FtR8SCpzk=
X-Received: by 2002:ac8:1908:: with SMTP id t8mr29708341qtj.18.1573545998479; 
 Tue, 12 Nov 2019 00:06:38 -0800 (PST)
MIME-Version: 1.0
References: <20191112062857.32638-1-joel@jms.id.au>
In-Reply-To: <20191112062857.32638-1-joel@jms.id.au>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 12 Nov 2019 09:06:22 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0Lhsa7S_Zto74omx7iLNcSbVjSfm4BAOY5NgN5S5gqRg@mail.gmail.com>
Message-ID: <CAK8P3a0Lhsa7S_Zto74omx7iLNcSbVjSfm4BAOY5NgN5S5gqRg@mail.gmail.com>
Subject: Re: [PATCH 0/5] ARM: config: ASPEED updates for 5.5
To: Joel Stanley <joel@jms.id.au>
X-Provags-ID: V03:K1:aCVKzr14uRpSWUW65H3frDdUgppTjAphnG0RYJPrefOO/LQObjz
 uLK5fwRErppwPoT9Jvn2jrP0XHQvBZ2eUdximzyHshy3VGmbuQ8Y9e7qpOhZ3PR9CEbgtfP
 L2O1ZU7Icapqb7KQPDpTjPuBVkpbf/VMJ9Er9/JD7yz7UMiRIndh+Crn2NKL/zcGTuyzgl6
 PbK6+jDhBPj8ObE3Nnc8Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:WGwjNy22ViU=:1eQ8inAItHE6QwnWZB8qRU
 fAO/rlJXH/bdIkvOOV0aFPtJUwRIxybCN9y/dJnk8mTk+gJqcLq3FjRweupf0epKDUgc0Vnpv
 NAka9DWCbtAlpwL9qAKFOc0jSzmboxXzKKHvMdxH+sGtE+fVEd0VLkbXcJttv/o8+oO1W0gVh
 S+q2Cwqry/9W0cW+koxz+pOFJIiXxyxhwQzQMj9EePE3FFLnTmeZ3C+vAUCKsqbjEoGWDIV0V
 Jr/9B/J7jn58ucBQel2vh5CsxdzzxAcbHM4W6tJ5xkQCnjZKB8I4uWs38Vy3TOvBYE4QUOTUo
 gOYUHcq35Tv4plcCZdlXA1hGxKFD+4RNIPG6tZSMZia8EB8ZtTPU8SFr4t0P3rNRf5r+Otl5n
 7ahOuAjqDMpvgVf3uDsUbKhc58dvYQKKWknar8si53/uG8S5ASCqq/Ot6VvVgjwmUb0BcIxGq
 VSizzZWcLid9XEqWSDd/Vt9GSoriL4TMe6t19xyVbczdTQ8TVfzoC7XbUGrO5hLUDo8US2wo0
 4FkzQimPJ7A5RafwJkw8RmXwHtA9P1dIA2vKPxPtRVuAKWdgOPCDSMN1mqXHcMhgYmLXK2coq
 EJwxR6vawD4lfiW/CXFq0MIM6xJipwgG5aNHuGt9Q3CqVAnTvXQZmjGIYutP1F2vj/EgtAonO
 Ud9hdvJF+J8tWvS7EHNRA+WE7fKBiKTnY85Vs5fpZu7aDwlrlh5jw8bWxpwcU4GDrAouEi9JX
 g++9wg3/vWg4vJYaNZ7MC/ULJa87SmsgoGAJs2pEnh3CbdirEBTU8sB/2sRsnV7UNpWdQ1PKp
 yo10uIDyOnZeRk1pX1nJJ5tq449LO1OxkiG+dAnv2RoAKESyXNtJYkXzDBK0gAu8noGkLCjLp
 yJr5TUzYy3yq2y4iRU/g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_000643_559779_17256703 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrew Jeffery <andrew@aj.id.au>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 =?UTF-8?Q?C=C3=A9dric_Le_Goater?= <clg@kaod.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 7:29 AM Joel Stanley <joel@jms.id.au> wrote:
>
> Here are some additions to the defconfigs for ASPEED machines that I
> intend on sending for 5.5.
>
> If you have time to ack them that would be appreciated.

These all look good to me

Acked-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
