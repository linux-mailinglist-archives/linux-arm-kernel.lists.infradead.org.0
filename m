Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6AF9F074
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 18:40:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R/CaxOGO2ZeQayN5LyY0CYH5QbHSjVTdvGQI1CNgjDs=; b=ESgDV3c+NfnhHw
	hTSqkBsTGuyM4Tb+mPB4Y/y33SrXkzhldIeuKaZvqFhaMzV6hvLgFaiGeLrmmbNDZpGaXCMHfDbqZ
	8RVvvnqAeQz7gumj7g1sZy2+qLFWDLd1XIorg+JOhApTjsIDIdon37mDuI1PGvXulNCES9ykmlPZi
	0f/zk1wPyM0AC2JQnX4ndgpivVN+uuoVsVbPmLHBSdujZRSW08I5pv3COOUvoTd0bKA0xocrXB0cA
	RvbT3a2WZFoPC2isLMtF8KutqvQEqcOof0NlFK+Pw8bVUQKuzART9m95Ufvlp3UXf2rvRQODtQ0BL
	uyKm7cLd2BAwFJ13nYug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2eWU-0007Vc-U1; Tue, 27 Aug 2019 16:40:46 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2eWM-0007V4-Fo
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 16:40:39 +0000
Received: from callcc.thunk.org (guestnat-104-133-0-111.corp.google.com
 [104.133.0.111] (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x7RGeCWG021084
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 27 Aug 2019 12:40:13 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id 70A4F42049E; Tue, 27 Aug 2019 12:40:12 -0400 (EDT)
Date: Tue, 27 Aug 2019 12:40:12 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: "boojin.kim" <boojin.kim@samsung.com>
Subject: Re: [PATCH 5/9] block: support diskcipher
Message-ID: <20190827164012.GN28066@mit.edu>
Mail-Followup-To: "Theodore Y. Ts'o" <tytso@mit.edu>,
 "boojin.kim" <boojin.kim@samsung.com>,
 'Satya Tangirala' <satyat@google.com>,
 'Herbert Xu' <herbert@gondor.apana.org.au>,
 "'David S. Miller'" <davem@davemloft.net>,
 'Eric Biggers' <ebiggers@kernel.org>, 'Chao Yu' <chao@kernel.org>,
 'Jaegeuk Kim' <jaegeuk@kernel.org>,
 'Andreas Dilger' <adilger.kernel@dilger.ca>, dm-devel@redhat.com,
 'Mike Snitzer' <snitzer@redhat.com>,
 'Alasdair Kergon' <agk@redhat.com>, 'Jens Axboe' <axboe@kernel.dk>,
 'Krzysztof Kozlowski' <krzk@kernel.org>,
 'Kukjin Kim' <kgene@kernel.org>,
 'Jaehoon Chung' <jh80.chung@samsung.com>,
 'Ulf Hansson' <ulf.hansson@linaro.org>,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-block@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org, linux-fsdevel@vger.kernel.org
References: <CGME20190827083334epcas2p115d479190b9a72c886f66569add78203@epcas2p1.samsung.com>
 <03b201d55cb2$1d4d31b0$57e79510$@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <03b201d55cb2$1d4d31b0$57e79510$@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_094038_698129_C5C8839F 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [18.9.28.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: 'Ulf Hansson' <ulf.hansson@linaro.org>, 'Mike Snitzer' <snitzer@redhat.com>,
 dm-devel@redhat.com, 'Andreas Dilger' <adilger.kernel@dilger.ca>,
 'Alasdair Kergon' <agk@redhat.com>, 'Eric Biggers' <ebiggers@kernel.org>,
 linux-samsung-soc@vger.kernel.org, 'Herbert Xu' <herbert@gondor.apana.org.au>,
 'Krzysztof Kozlowski' <krzk@kernel.org>, 'Satya Tangirala' <satyat@google.com>,
 'Jaehoon Chung' <jh80.chung@samsung.com>, 'Kukjin Kim' <kgene@kernel.org>,
 linux-ext4@vger.kernel.org, 'Chao Yu' <chao@kernel.org>,
 linux-block@vger.kernel.org, linux-fscrypt@vger.kernel.org,
 'Jaegeuk Kim' <jaegeuk@kernel.org>, linux-arm-kernel@lists.infradead.org,
 'Jens Axboe' <axboe@kernel.dk>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 "'David S. Miller'" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 05:33:33PM +0900, boojin.kim wrote:
> 
> Dear Satya.
> Keyslot manager is a good solution for ICE. And probably no issue for FMP.
> But, I think it's complicated for FMP because FMP doesn't need
> any keyslot control.

Hi Boojin,

I think the important thing to realize here is that there are a large
number of hardware devices for which the keyslot manager *is* needed.
And from the upstream kernel's perspective, supporting two different
schemes for supporting the inline encryption feature is more
complexity than just supporting one which is general enough to support
a wider variety of hardware devices.

If you want somethig which is only good for the hardware platform you
are charged to support, that's fine if it's only going to be in a
Samsung-specific kernel.  But if your goal is to get something that
works upstream, especially if it requires changes in core layers of
the kernel, it's important that it's general enough to support most,
if not all, if the hardware devices in the industry.

Regards,

					- Ted

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
