Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 626C7CBFC5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 17:52:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:To:
	From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=njyiYV8WLLILEtitplvzKx1mgDvdZi2BTwk/38G7rUE=; b=Pz0YPj2x+EqUk0
	18FTGwfm5hsKJBgk64hQEY55BUGGlHuRxkwcPitLzHE0n2wyqJowMGILa0N041nchkRMCrzXWqU/L
	L/gYFZ2h4BVMIOgbWTsLa/ymj9OyJmIQwCMy4i26L33boFj0hKKK9PK+k0u5Nq6QOZjBBDShbuj7n
	w1vsAt9AdfRZhGw7rBr31RPp+tlta3BDQ/7xERmfAR+Ayh57V03Kz1WIRXRJC8+GBNyJCYCKfJ7HR
	rHf4HvXI2vZwjSdKmbqKzMoIXuAam6qHm9ulo0FOz1ERbYKhoxa2dC5Lz+DsBZz6P2x6gPDGMBzR5
	TIUOi9Qeq+WysPPM9i4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGPsY-00072q-Lb; Fri, 04 Oct 2019 15:52:26 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGPsP-00072C-6N; Fri, 04 Oct 2019 15:52:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570204319;
 bh=tlXNezk2klm36a8BgtQ7aWv6+faM2dhbJvCXCdCOFZA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=fZyGQE2WrjZW8em4J6qE/CMX+qaoDkrb4cfayYSFuSsC6XNDBbfJABOmngKV3z7bM
 Rjhi3KD+3Xk3kjAeigEITXt/JHUykRRXfsNPBQfG3CWFZxUNiKjhniJULcmVBJeold
 YWu7xOUqeX3JdNjf2KwccTcd5yZ4d/k8In2n3Xq8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.208.214.220] ([80.208.214.220]) by web-mail.gmx.net
 (3c-app-gmx-bap10.server.lan [172.19.172.80]) (via HTTP); Fri, 4 Oct 2019
 17:51:59 +0200
MIME-Version: 1.0
Message-ID: <trinity-c33ab112-57a5-47d6-80e5-13c96442e302-1570204319219@3c-app-gmx-bap10>
From: "Frank Wunderlich" <frank-w@public-files.de>
To: "Lee Jones" <lee.jones@linaro.org>, "Hsin-Hsiung Wang"
 <hsin-hsiung.wang@mediatek.com>
Subject: Aw: Re: [PATCH] mfd: mt6397: fix probe after changing mt6397-core
Date: Fri, 4 Oct 2019 17:51:59 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20191004152001.GS18429@dell>
References: <20191003185323.24646-1-frank-w@public-files.de>
 <20191004152001.GS18429@dell>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:SA0Gglr+Lfvr4Iz1kF2/P2ycdFCnYWrl8HCghLFJOGQq5gM3NRxGEevpstbEN1hpyf6vT
 gz5mldmbYfbpYp5LpYr9QI3wk1cMPPitFC1DNLKkBoO8tQtsFYq9xE/KlcvGlxJl7oEL4Q7JWYfW
 4CvIDXImNJfBcEtvO797AERoqtx98dg7+AG5jVr+T+bPFeeNZ5aRXEpypWUszXHF/Nq4JeQY+RqP
 qKkOZsZiI6DZrbfXZXQuTqV4WjRs03JliKYKhehpbkhSpfdyjpbz2/KnPCjTUOEHb8fhE9qLUKdH
 sQ=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:DUEgJZ4YN2A=:bc/n0OX5WsUSC0c2k100q8
 RE27yEX1VHwQKm6UTogrAHMF/rdsYW9bauE+46Z52liDodog/Rl/VO/+35Nh7DIXaRMy0KWJ7
 6eK1Mu1KpuKcCCN0tozF7AOJbzd6OHbwR8iHXs9KeuiBLW6+E83+AFY9pyyt4hIK70cU6r/m8
 /4Satde9MAiA03ExOtsqjd9lvrvWDYVKmtbqAAPFp+BO7+Ax/mTav0h5kfpxajq4nCIXSMPB7
 hEyAnXHdKv1b7hOOpBQm55zzaH0xwEk/vkjLfo4U3hiLXu9TceAOIHOxnLzLGym6jLedKTqAB
 ljkXEnCBsGUMEJgv1m/yCrFNC1OIKjZzcrXY672EthDNOGtwabqYIy3Jfcq+60Z/Qbra/tHrF
 fEA4XmuA/2o6Wx2FauqPRoO4KeWOMmYU738wsN6xLD1uD1TQIgVwN1lsfQYkp+IE0Pj2eUol3
 oK2K2qBcVWUhvs+lJuL6PudkSeCSXNvL1IeB/i0emE52jHNkVCbA1+44bqa/CVy++iDroL/NU
 Y9K3IiIuh3+/cbGMTaqiQA/Zmo9ThE0O2bcSAzz+NuVWY0Xofz3QNGogkCESzkRxmXRGPFMCI
 8o+YZ9xrnFevRPf3Hvzt3JXLuQXZzWxuYuZfzyZKNQzJJVZ72TV55+TYHtM+Rj9YUv6SUMpv0
 D25m6Yp9BMqijAMuruku/k4oEnWSc6OpAGwhhxhwxM7Al+xYHdK3+D+Xt5dQb5l5u7Ec=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_085217_570346_DB5694DB 
X-CRM114-Status: UNSURE (   5.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.22 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This Question goes to Hsin-Hsiung Wang ;)

i only took his code (and splitted the 3rd part) to get mt6323 working again without reverting the other 2 Patches

regards Frank


> Gesendet: Freitag, 04. Oktober 2019 um 17:20 Uhr
> Von: "Lee Jones" <lee.jones@linaro.org>

> Will there be other devices which have a !0 CID shift?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
