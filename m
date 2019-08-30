Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A295A408F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 00:29:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hqekidmj/a4kjPTygVFqirOdEe3BE8gTAIo3aIyt6J0=; b=uZkVZYt89s8Mlh
	uySUH3IAnJ1srGj2tykIopppmYmbpR6w7L8ypVqxIt8RzAAfCoCI/qCpoRqFJ7j3r8VE4RcL6Y//Y
	OIj81xzuWBVfyukPSDqOZHFgiTlv/iT6Kwa4mP8M06b24pY0vgqkxZAC94MsU9UjpuUrBR8coXhfA
	ngWdUf7wP7jFfI3Ukm4w8CBYf1tN6Ox6B+5f+GL5mZWwCLRSUDIush+To/fu6oF3B18OiZS74iW69
	Qhe1gyfvJT3hXFICR1xoD6ePH2XNIJRWrLtOJ4oFoQt7hpgb5zm8SbNeYRKLGHptzoBQPJbt/wSiG
	2qUAaamUFwcRHFMhI3aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3pOA-0000qE-Mx; Fri, 30 Aug 2019 22:29:02 +0000
Received: from mx2.ucr.edu ([138.23.62.3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3pO1-0000pq-8G
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 22:28:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=ucr.edu; i=@ucr.edu; q=dns/txt; s=selector3;
 t=1567204133; x=1598740133;
 h=mime-version:references:in-reply-to:from:date:message-id:
 subject:to:cc; bh=wgVygESRDZ4+rg/c5sOJBi+QyyM3UkHfyRMFo8KoCxI=;
 b=LsQjKAj/PCAjki1t1x1XkjyBXHpD7XeuzBrCT4JNfCWC37wiNErWiakD
 +WL6pZhVwLb7mMq1lFpbCD8OoOi7QcPrQaj72kAZhSEn/wJqUbBzJ2RlF
 aVjGDF9+IWtFKl8F14dr7agp9EUsBK/8IatPjUikZq+3U0vB3jsMNd1z2
 SD1esGDXnrTzaUfQ9EOhdT/O+kSFO3oaNPUZaXCPG8uEDc49CqVBABCWu
 fVsBn7Gy4MmnvBPhPx126DYHn0FYq8v8Qcx4baCYbTPGmaF8WuhF5ReLw
 wEbwPyVRXJshsANUTuZwWELcMEFs1T0qllnwnht1Ro/Bb5rGAtg++cSgo Q==;
IronPort-SDR: FHt80YGvEFw9T+5PHRowIVI85fAWvJabApy9nt4DfOk7LRYGg+OJ7YxDPpGfkKXMyt28c346LY
 ogCgLOj+Ead0c7iPwnYS3fRJttvd4EjiN9Gpycb5OQwt2mn+eN6ZIhyg60E+sTRFtb6TZYWSwp
 Aq4r3r4qm/b5Y52oGMz04RVQrpmNataBrcIkQAT8mVK8JcPpUnPq7q5508twQBcf9iOBML3qnq
 OJ/iRxFKMBJShvY/WueLymladsU4FAYTXqnpYULNc0Bti9EDdqdon6FU/M6ILE2SdIrxj4HGbH
 3xg=
IronPort-PHdr: =?us-ascii?q?9a23=3Am/1KgRxcjbE5LqjXCy+O+j09IxM/srCxBDY+r6?=
 =?us-ascii?q?Qd1OMUIJqq85mqBkHD//Il1AaPAdyBrasa1qGO4ujJYi8p2d65qncMcZhBBV?=
 =?us-ascii?q?cuqP49uEgeOvODElDxN/XwbiY3T4xoXV5h+GynYwAOQJ6tL1LdrWev4jEMBx?=
 =?us-ascii?q?7xKRR6JvjvGo7Vks+7y/2+94fcbglVmjaxe65+IRS2oAneqsUbhZZpJ7osxB?=
 =?us-ascii?q?fOvnZGYfldy3lyJVKUkRb858Ow84Bm/i9Npf8v9NNOXLvjcaggQrNWEDopM2?=
 =?us-ascii?q?Yu5M32rhbDVheA5mEdUmoNjBVFBRXO4QzgUZfwtiv6sfd92DWfMMbrQ704RS?=
 =?us-ascii?q?iu4qF2QxLzliwJKyA2/33WisxojaJUvhShpwBkw4XJZI2ZLedycr/Bcd8fQ2?=
 =?us-ascii?q?dKQ8RfWDFbAo6kYIQPAegOM+ZWoYf+ulUAswexCBKwBO/z0DJEmmP60bE43u?=
 =?us-ascii?q?knDArI3BYgH9ULsHnMrtr1NaYTUeCozKnP0D7MbPNW1i386IPVdR0gofCNXb?=
 =?us-ascii?q?JqfsrQ1UUjCw3Ig06NqYP5JTOZzPoCvHWG7+d5U++klm0pqxlprzSx2sshjp?=
 =?us-ascii?q?PFi4EVx1ze6Cl0wYQ4Kce6RUJnZ9OvDYFeuDuAN4RsR8MvW2RouCEnxbIYoZ?=
 =?us-ascii?q?O7Zy0KyIg/xx7YdvyHb5CE4hL9W+aVJjd1nHdld6i+hxa26ESgzuP8WtSt3F?=
 =?us-ascii?q?ZErCdJjsPAtn8K1xzU5ciHTuVy8l291jaI0gDf8uBEIUYqmqrHM5Mt3KI8m5?=
 =?us-ascii?q?4JvUnAHiL6glj6ga6Ue0k++OWk9/zrYrD8qZ+dM490hBv+MqMrmsGnAeU5Mw?=
 =?us-ascii?q?gOUHKa+eigyLHu81b0QKhWgf0siKXWro3VJdkDqq6jHwBVypoj6wq4Dzq+1N?=
 =?us-ascii?q?QYnH8HLE9KeR6elYfpIVTOLOn7DfihmVSslilkx/TdM73lA5XNNWTDkKz7cb?=
 =?us-ascii?q?Z87U5cxhAzwspC6J1KEL4OPej/WkjrtNzXXVcFNFmYyvjmBJ1Y14caVHjHVq?=
 =?us-ascii?q?OQLq7XmVOB+O8qJ+6CeMkTtSqreNY/4Pu7vH4rmUIaNZup1JpfPGGqHv1nex?=
 =?us-ascii?q?3CSWfnmJEMHXpc7Vl2d/DjlFDXCW0bXH21Ra9po2hjUI8=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2EPAACKoWldf0anVdFmHAEBAQQBAQc?=
 =?us-ascii?q?EAQGBUwcBAQsBg1YzKoQhiByGcIIPk3aFJIF7AQgBAQEOLwEBhD8CgmEjNAk?=
 =?us-ascii?q?OAgMIAQEFAQEBAQEGBAEBAhABAQkLCwgnhUOCOikBgmcBAQEBAxIRVhALCwM?=
 =?us-ascii?q?GAQMCAh8HAgIiEgEFARwGEyKFC6FogQM8iySBMohvAQgMgUkSeigBi3eCF4N?=
 =?us-ascii?q?uNT6HT4JYBIEuAQEBjUCHFJYJAQYCgg0UjCuILBuYYi2mIg8hgS+CETMaJX8?=
 =?us-ascii?q?GZ4FOgnqOLSIwjzgBAQ?=
X-IPAS-Result: =?us-ascii?q?A2EPAACKoWldf0anVdFmHAEBAQQBAQcEAQGBUwcBAQsBg?=
 =?us-ascii?q?1YzKoQhiByGcIIPk3aFJIF7AQgBAQEOLwEBhD8CgmEjNAkOAgMIAQEFAQEBA?=
 =?us-ascii?q?QEGBAEBAhABAQkLCwgnhUOCOikBgmcBAQEBAxIRVhALCwMGAQMCAh8HAgIiE?=
 =?us-ascii?q?gEFARwGEyKFC6FogQM8iySBMohvAQgMgUkSeigBi3eCF4NuNT6HT4JYBIEuA?=
 =?us-ascii?q?QEBjUCHFJYJAQYCgg0UjCuILBuYYi2mIg8hgS+CETMaJX8GZ4FOgnqOLSIwj?=
 =?us-ascii?q?zgBAQ?=
X-IronPort-AV: E=Sophos;i="5.64,447,1559545200"; 
   d="scan'208";a="5435366"
Received: from mail-lf1-f70.google.com ([209.85.167.70])
 by smtp2.ucr.edu with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 15:28:37 -0700
Received: by mail-lf1-f70.google.com with SMTP id q29so1858326lfd.16
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 15:28:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/OqUmnBUo2TwngZckoAVX/16b3P4Ti0vmh5QbNPt/qI=;
 b=PKIyqoasxyb9Wvpcr0vSCLC1MTTZ6Td9+RqEcFJtOE4gT36rhCALI3WO0H4LHlNKGb
 1glalQgbwfgwcLDHP1uFWC3sRDFmn86Hsjxp70TjiAlfWZg3hPRcgoROB1c0IZeDpV40
 SDoTHaF9bl3YB2CROO9CowLzH8SGsAWgq5wdN6AAf/djnaqLHx/tdl9XwM/xNiVaxauG
 16/IgFXH5w04DOVyZuBnS0NwYv60753qZXmhC6fk9TwTNSgR3ChP1KukJvWAijM1QVTV
 0GULF9m0qkjmSY9mRPacV4MWvQE/QhPucK1bWTcmDC020VzwphDU/gVtYiWDbU/wuInh
 XM3g==
X-Gm-Message-State: APjAAAVSIRnH2eiJl29/rPKoMpmUgbcW5GZh9UiX70Z8oMEpvtg4hVMP
 MrDA5ev0NY6WVTMwIKBk4c7dBpzLqfv9ggARquydrOiOwJeytlO7Om/fU6VnIunn3fzwXykeW3M
 Hv6XPLHTykuR3oSRsYbcu4EJV8FtEKjHBaLVamlGAUA0+p6MQRVJS
X-Received: by 2002:a05:6512:304:: with SMTP id
 t4mr11134399lfp.15.1567204115688; 
 Fri, 30 Aug 2019 15:28:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwa33Y9Bu9hA8LxhW9Vg/wJim85Pk0no7AsHr9XFg9pLsGspx5AJcu+yjlmeSKNUIJl9tL56jCgdsQd0GJsEII=
X-Received: by 2002:a05:6512:304:: with SMTP id
 t4mr11134392lfp.15.1567204115524; 
 Fri, 30 Aug 2019 15:28:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190207174623.16712-1-yzhai003@ucr.edu>
 <20190208.230117.1867217574108955553.davem@davemloft.net>
In-Reply-To: <20190208.230117.1867217574108955553.davem@davemloft.net>
From: Yizhuo Zhai <yzhai003@ucr.edu>
Date: Fri, 30 Aug 2019 15:29:07 -0700
Message-ID: <CABvMjLRzuUVh7FxVQj2O40Sbr+VygwSG8spMv0fW2RZVvaJ8rQ@mail.gmail.com>
Subject: Re: [PATCH] net: stmmac: Variable "val" in function
 sun8i_dwmac_set_syscon() could be uninitialized
To: David Miller <davem@davemloft.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_152853_328630_54A58298 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [138.23.62.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Chengyu Song <csong@cs.ucr.edu>, Alexandre Torgue <alexandre.torgue@st.com>,
 netdev@vger.kernel.org, Zhiyun Qian <zhiyunq@cs.ucr.edu>,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Maxime Ripard <maxime.ripard@free-electrons.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi David:

Thanks for your feedback, this patch should work for v4.14.


On Fri, Feb 8, 2019 at 11:01 PM David Miller <davem@davemloft.net> wrote:
>
> From: Yizhuo <yzhai003@ucr.edu>
> Date: Thu,  7 Feb 2019 09:46:23 -0800
>
> > In function sun8i_dwmac_set_syscon(), local variable "val" could
> > be uninitialized if function regmap_read() returns -EINVAL.
> > However, it will be used directly in the if statement, which
> > is potentially unsafe.
> >
> > Signed-off-by: Yizhuo <yzhai003@ucr.edu>
>
> This doesn't apply to any of my trees.



--
Kind Regards,

Yizhuo Zhai

Computer Science, Graduate Student
University of California, Riverside

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
