Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B112878D1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 13:39:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NTpwCKpQIrRojVO5yQowP6cxnhDXf9KxzLSprYD+kcE=; b=CYXpywJ2EWLppa
	/pmZXxRl/htRaw4bzj8BcmDbs0otZ/G5JcogXpEo9qhxdX9529IQgr0R8gzhXsgIrplWjLjYvoSg+
	2rjMbGiCY0BEdvsXMLQl/KN01mZlXZcXvK8jgKHIYOe6r1WgbLa8Wl32KbuLuRKr1oZnbFnWphHIY
	u5CwnrVq7bknxkrp3wbCI2rHus7e0ptrEIUjVR2E/8Bv+06hHdpgxRkeKtAso+K74dGGps3Uk2TUc
	/kzj+OzCtsEfBSqwZv/x26aDMSLcqrv1KLrUGFpZQO2WqqtSWKw35u5VF/+u8EHfjc4diIAmcJurN
	ZzzBx6GTXjBHDW738RSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw3EP-00053z-7Q; Fri, 09 Aug 2019 11:38:49 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw3ED-00053b-JM; Fri, 09 Aug 2019 11:38:39 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190809113835euoutp0203cf6a40c6ba20e7419068b4b083de35~5Pi6zKulA2402024020euoutp02V;
 Fri,  9 Aug 2019 11:38:35 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190809113835euoutp0203cf6a40c6ba20e7419068b4b083de35~5Pi6zKulA2402024020euoutp02V
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565350715;
 bh=ciOb6spUFxEopuASAxMYr4OicRDjbbeUQNl3/3W2RC0=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=F4jCspHo1ZNymcum0RJ4SAewCj16GaDlAVZIDT2iz4G3oLIcVNFv7QZq1tB9+Mno+
 zjxkidwYaZ/byaK+48GmSjpyd4EP3CVVtb2hsnlR4r3Xd9Txb3fjCp02LLNQjfvbhA
 LfZtr2jIlfH7OXIPbRApNOZfFUcXc5fICbOu4WY0=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190809113835eucas1p164d330c27bd3a49537b7450fadf60f2f~5Pi6eb4BE0165101651eucas1p1R;
 Fri,  9 Aug 2019 11:38:35 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 1E.84.04374.B3B5D4D5; Fri,  9
 Aug 2019 12:38:35 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190809113834eucas1p1ff05719f819b28ade78ac677ea76b915~5Pi5VNrUE2548825488eucas1p1t;
 Fri,  9 Aug 2019 11:38:34 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190809113833eusmtrp1d0d26c18325a624784804f5dcd2b3a9f~5Pi5F7Mcq0891408914eusmtrp1l;
 Fri,  9 Aug 2019 11:38:33 +0000 (GMT)
X-AuditID: cbfec7f5-4f7ff70000001116-2d-5d4d5b3beff2
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id A2.7E.04166.93B5D4D5; Fri,  9
 Aug 2019 12:38:33 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190809113832eusmtip25484f3be8e362eb8076e0844f903c912~5Pi3tqsfV0444004440eusmtip2N;
 Fri,  9 Aug 2019 11:38:32 +0000 (GMT)
Subject: Re: [PATCH v3 20/41] fbdev/pvr2fb: convert put_page() to
 put_user_page*()
To: john.hubbard@gmail.com
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <1f1656b4-3411-3237-726f-8fb7b73ae363@samsung.com>
Date: Fri, 9 Aug 2019 13:38:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190807013340.9706-21-jhubbard@nvidia.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02TfUxTVxjGd+53O8uuBcYJui02fs1F3aLLXsfGXObiNY6o0UQzZbOTm2JG
 q7ZW5wxZWZOpIBsFG6RtHOsmXyrUtlPsUExJWqBYcRKiTMsyBBmIVhwiCDrKHRn//c7zPs/7
 8cfhSOUIk8zt1O0V9Tp1loqRU+cCI1cXp2xNS3+zzyIDR81pBk7W5LDQnv8TCYORHxiI3iwk
 oNjaiqDXdQiBNxBBUNcyykK95xgBbUMPGAgVOAmwF3gIqO++S4G92ExAyfFGNEG9BJztdrLQ
 fFkHLXlacFj3gLurnYaLHW9AZ2SEgMbvozTUXWyi4LrPwcBR1680RE4/p6H1coiGHn8+BZY/
 XCz4xmpZCJS+DGHPIxpMTRU0XB0P0vDE1UXDsLeIWLlAsJuuUULkUgMlNDuxcMF2mxU8FYuE
 n+v+JgR31RFGcA8WskLj8aeUcKJpg9CZFyQEzy/fCCZrByM0RNsoId98nxFay+4x6xM/lb+X
 IWbt3Cfql6Zul2eOdRcTu6+8+JWzb5wxoVuyXCTjML8cO6usZIyVfAXCd/uTcpF8gv9BuLrQ
 S0mPRwhHwy30VOL5/QYkJcoRPjO0XDINIHyqpXLSFM9vwnn1FirGCXwyDpcN0zETyffJcDRU
 ysYKDP8uthyqmuyk4FNxyeMTRC7iOIqfi3uc62JyIr8FdwZctGSZiZtK7kz2lPEr8M171ZNt
 SD4Jd9z5kZD4NXx+wEHGZmE+IsOu3zyktPUq7HNXIInjcV/Qy0o8G4eKjlJSoBrh8cO9/6XP
 I1xe9IyRXCm4IXiNjm1H8q/jGt9SSf4Qh59GmJiM+Th8Y2CmtEQcLjxXTEqyAh/+Tim552NX
 mYuZGpt7oZIsQCrbtNNs086xTTvH9v/cUkRVoSTRaNBqRMMynbh/iUGtNRh1miU7dmndaOJD
 hJ4Fh2rRpbEv/IjnkGqGwjTnk3Qlrd5nOKD1I8yRqgRFG5eWrlRkqA98Lep3fa43ZokGP5rF
 UaokxcEX/tyq5DXqveKXorhb1E9VCU6WbELV9tTrlg17nJqxUILm4w/Mt0rtgXcs+7dZj/Q/
 nKU522zNijNnZx6rNG/b/urgbbsiSHw2I/vBvJyXcjr/ypFTa953Zhu9K1albmE3r155I1C+
 8Qno1ywMP/xo+Hds9H27cV1oYXuGvz/Fspbumfv26OgrJ1cv6xnkuhy1O9amxc9OVFGGTPVb
 i0i9Qf0vm535fAwEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA02SbUxTVxiAc+53mTV3BfTIpmCHmvhRVxD71rhu2X54YzTbMmOm2GiHN1Cl
 LfYWNrfEdUGDgGzg+JC2YawOwgiT0ooioUPLpCBMwTEScas/ED+ZNuhkOhxrbUz495zzPk9O
 TvJypOIYk8QZzTbRajbkKpk4auC/YGiNNnOr/s3Dfg24WlsYaGj9ioXRsu9JmAp9w0D42nEC
 aqqGENzxFCE43RtC0DX4jIVuXyUBI38/ZGCg3E2As9xHQPfEbQqcNYUE1J7oQxG6Q0DbhJuF
 S+fNMFhqAlfVAfCOj9LgH1sFN0JPCej7OkxDl7+fgt86XQwc87TTEGqZpWHo/AANtwJlFFRc
 97DQOdPBQm/9Arjse0SDvb+JhivPgzT84xmnYfr0t8Q7KwSnfZgSQj/3UMIlNxbOOf5kBV/T
 SuFk111C8DYXM4J36jgr9J34lxLq+j8UbpQGCcH3w5eCvWqMEXrCI5RQVviAEYYaJ5kPEneq
 Nlot+TYxJcci2d5SZqohTaXWgiptnValTtfoN6RlKNfqNu4Vc40FonWtbo8qZ2aihsj79ZXP
 3PeeM3b0h6wEyTjMr8OzD3pQCYrjFHwDws8aGyIHLjJ4HQdbC2JOPJ4ZLWFizn2Ep6uDKDqI
 57fh0u4KKsoJfBK+3DhNRyWSn5Th6qFfiFjRifBU+2MmajH8BlxR1PyilvM6XPukjoi+RvGp
 +Jb7/eh1Iv8xHnzYRMWUV3F/7c0XLOO1+NrkKTbKJL8Cz9RdJWO8EI/d/I6IcTI++5eLLEcK
 x5zcMSdxzEkcc5J6RDWjBDFfMmWbJLVKMpikfHO2Ksti8qLIJp7pferrQFfbPgognkPKeXL7
 0i16BW0okA6aAghzpDJBPsJt1Svkew0HPxetlt3W/FxRCqCMyN8qyKTELEtkr8223eoMtQa0
 ak26Jn09KBfKj/IXdin4bINN3C+KeaL1ZUdwsiQ7emPe2K5FR+zJhf7h5mUp21sWHyKu3C20
 fjJ5XTPwZHP8uympgUypM1y5+bWWYuUXxpx9QclZbKz/Pfnx4cXoovHkGo/ZoF++I8Fl0507
 ui1U+XaKM7y+J7XL/ukZuiHrYkfm8I8/+TctKaredKBt/nurb5/Sld6LGz+U184umPV6HjFK
 SsoxqFeSVsnwP1w/tA+fAwAA
X-CMS-MailID: 20190809113834eucas1p1ff05719f819b28ade78ac677ea76b915
X-Msg-Generator: CA
X-RootMTR: 20190807013420epcas1p1a38f499e39127e66501040b7e9e788ba
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190807013420epcas1p1a38f499e39127e66501040b7e9e788ba
References: <20190807013340.9706-1-jhubbard@nvidia.com>
 <CGME20190807013420epcas1p1a38f499e39127e66501040b7e9e788ba@epcas1p1.samsung.com>
 <20190807013340.9706-21-jhubbard@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_043837_845871_B397CF03 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, Ira Weiny <ira.weiny@intel.com>,
 Dan Williams <dan.j.williams@intel.com>, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Arvind Yadav <arvind.yadav.cs@gmail.com>,
 ceph-devel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-nfs@vger.kernel.org, netdev@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, linux-xfs@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, Bhumika Goyal <bhumirks@gmail.com>,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 8/7/19 3:33 AM, john.hubbard@gmail.com wrote:
> From: John Hubbard <jhubbard@nvidia.com>
> 
> For pages that were retained via get_user_pages*(), release those pages
> via the new put_user_page*() routines, instead of via put_page() or
> release_pages().
> 
> This is part a tree-wide conversion, as described in commit fc1d8e7cca2d
> ("mm: introduce put_user_page*(), placeholder versions").
> 
> Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
> Cc: Kees Cook <keescook@chromium.org>
> Cc: Al Viro <viro@zeniv.linux.org.uk>
> Cc: Bhumika Goyal <bhumirks@gmail.com>
> Cc: Arvind Yadav <arvind.yadav.cs@gmail.com>
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-fbdev@vger.kernel.org
> Signed-off-by: John Hubbard <jhubbard@nvidia.com>

Acked-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

> ---
>  drivers/video/fbdev/pvr2fb.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/video/fbdev/pvr2fb.c b/drivers/video/fbdev/pvr2fb.c
> index 7ff4b6b84282..0e4f9aa6444d 100644
> --- a/drivers/video/fbdev/pvr2fb.c
> +++ b/drivers/video/fbdev/pvr2fb.c
> @@ -700,8 +700,7 @@ static ssize_t pvr2fb_write(struct fb_info *info, const char *buf,
>  	ret = count;
>  
>  out_unmap:
> -	for (i = 0; i < nr_pages; i++)
> -		put_page(pages[i]);
> +	put_user_pages(pages, nr_pages);
>  
>  	kfree(pages);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
