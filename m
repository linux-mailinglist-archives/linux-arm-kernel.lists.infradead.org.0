Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 907741A2DEB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 05:24:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=84+9irgqvrjuHHjozRGo9rpGXuX2LCLcnm1Q0Jnn5zU=; b=JOJA7kEe12Et/E
	cBKOw/h/VB7to86IMbs9J3/+PtSdvvCJ6vz83tUvWXwi1jTTyQRlIPuciQsITrLAwhW/M91hLAp+F
	Ofco7Z+cF50ijco/TRkv2lHH9RNvzn/YHdSdgXFrdsVyUFF6kgojtb620c7BuGNm9ctBdH0jhB91O
	rGXddZ8SEQbfbJKB38O0XPGrLXEnFODG0xhu7rbQw0VA8kQagdLtrXcZ3yQp4BvdDhWu30WZ0FjDb
	dhahqujOoOSRk/30qoAnIW7Vwg5Ckdw1T5T7E8gGPPCr4uWNA1alEUqiYQKCX3jjpLnKa7SShGqYn
	ci+xjSI71IQDPe9pJumw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMNn5-0003Qn-WB; Thu, 09 Apr 2020 03:23:44 +0000
Received: from sonic304-47.consmr.mail.ne1.yahoo.com ([66.163.191.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMNn0-0003QB-Qc
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 03:23:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1586402614; bh=/6EYCRlfa2umBwyf6HMqnS88iYA4EIXadLKaqqSMGXc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From:Subject;
 b=bnjdxeN8RjiCAR0Gp4l7zXrwCjxV3ZPw3ZOk2VxzOipNuyE++/wvehKnAIAvPNSEwFr9PknLd/TMbUquiLtRr+fx1ORTHfjqeRFMxTRLELakoqg73XjiOHLLnR2peUmVlxQuieascQ9HdL4Z3xpkEL+AmjqgjFPAMZVu12YlcYo9IflQ1ibZDh/N2TU0zVIiqX4mjzQQIi7MCLWsvjPkJF76zChkAWwX/FGZKQHForkFEjWnJjM6dMbWiOD21J++4cKcB2+dB3sMWboQV0fnlUE+c956ju+IYP15nb7MRBQ0jg7LLO2+v8Z0WBPXicez/dIh2C7Qx2klRYg7JKuuLw==
X-YMail-OSG: Kjs_hFQVM1mYR3Bbv__auOf2fhoaIk9dbexLkMUvZvDcgibPrEIH2uN_nb7TSk.
 AjTVDttprz38pf2agkDENCO9OlpstM6AKa5fqJSzz9g9BDnD9cEKZ6Kcqg9CatwzLNYThMuSUeYX
 2yEgN2U8e5xgtZHtWmAFsIbznPJD_UPhljYJl2r_EoL5qqrqeJu9Nnd9Y.Ff.0cQ6SO_SlnVXMbj
 JYEgiFEkwq6TWViREF0oZDh5a7V1WTHk_fQL7mKo.zfkeUUkf9r2PC3YbrlM36YDrBNE7Vu_H_23
 7SUm_oYUdCkn.imVzOSTsbg1UKej12C_c6DVKmb2bShJF7ckagBec7h.F7Pz2jADVU.RAf_SzeRw
 jnXQU.OYwZs7DtYvRPtgjcVfmgAxeq8RUp0VPoOeRchdyRoGHKkYEH1l0ufQv3CAgRqC9S3zsOd9
 fnhObZjDMfX58eXYxHjcxjHRReqFOhx5Hz6aq8FIq7jw8y8OEbWPMrjaCpR4FKEn_bozdR4qyDFm
 4sbsu66FrZifwa3kj9UeUr.wGSL5S042VmSyGfETFpHOTRvx51GHTkDHF4kqnnRQjnt9cOY_TXoy
 6ikjZzl8Rym8MnuDSY3t2UEnyXfrQM8zmKcZMaBXZA.1JruNMW__SZDUsuarZwJACQIZFjYaEYcB
 6Fx2cC_OXlNG7d102FBbLxbbWE51eCCn6.Ao3BUdftIqkSfQqE8AmEChvpnb3Hjczsgr87hSe_ZY
 FNPGuabtMxRjTV5vOhJN9EVsFZjNMIpNdxApHaOp9BBa0mK8Hd4Y8_sLLzgFE_OX._p_ww8OgQCS
 _PZw5TJANZTRxfmtlnIT9WY8nJxFEz0ZzkRbyJrD7lBRVCuL2qRMMrbnVCU.d3atpGGNT71.FMTl
 XJp9kOjDwdiPhEHaNTf0wy9.286eHx9hDHZx13ycI4lCw.BNZVla9tTflJZSkBR622oDAvju0pYi
 chnjA_f0d_Rs3Y.w_0UWDDtsiqrp7Nd.ENOvnjBk3WtBBjbeqzYHxInpU0ICw.akO5xUiF4HXGRD
 NGu7bFyqgIPHiVSYVkpfC.PnR3fZmrfgYy1Ktc5D_y5Xh2Z7vFADl5LC6uRiCqJ9Y4yLuHo1ATrn
 PxNppKa486Nn86yT5d.pKQ3q49VQAxNEB7EGZ_QmK0uyT9X6oF2qpuwBBPhXWKUMiK3EbPuATGVw
 L.4MdTecfHCHslUWJtwrtw2v46CslPDJY3TtzPBEF3b6hKOBHSxZ.8CqTxF3S2_xcA64udxpFdja
 9c_vKNU82cTswpLxDeBimIz._J7Xaum1i6dZEwCbc.uspehQ3L04kL45bX0fhpi7dDoUJat5aE3S
 p_Fl8AHbSq3P.bkBJGmoklW4vRdsCXSUz4v5SYoPxJ86d1eVDsQ0qrpylWpfgRvkXgRw467FBrzC
 _ECRk3ijYTNyDsC7idxPty4i4XJSa9KM2uH5RWvaV.R8phY0hHU.lO54DG8mygB9TxdZscMBwbtP
 JqFlYvAh9BGSO_QyxpGrs
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic304.consmr.mail.ne1.yahoo.com with HTTP; Thu, 9 Apr 2020 03:23:34 +0000
Received: by smtp412.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 07bc1f76d2033b5244ea2e327c66bf87; 
 Thu, 09 Apr 2020 00:39:51 +0000 (UTC)
Date: Thu, 9 Apr 2020 08:39:35 +0800
From: Gao Xiang <hsiangkao@aol.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 17/28] mm: remove the prot argument from vm_map_ram
Message-ID: <20200409003931.GA8418@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-18-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408115926.1467567-18-hch@lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailer: WebService/1.1.15620 hermes Apache-HttpAsyncClient/4.1.4
 (Java/11.0.6)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_202338_917949_240B687D 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [66.163.191.173 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hsiangkao[at]aol.com]
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
Cc: linux-hyperv@vger.kernel.org, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 "K. Y. Srinivasan" <kys@microsoft.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Wei Liu <wei.liu@kernel.org>, Stephen Hemminger <sthemmin@microsoft.com>,
 x86@kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Laura Abbott <labbott@redhat.com>, Nitin Gupta <ngupta@vflare.org>,
 Daniel Vetter <daniel@ffwll.ch>, Haiyang Zhang <haiyangz@microsoft.com>,
 linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 Minchan Kim <minchan@kernel.org>, iommu@lists.linux-foundation.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 08, 2020 at 01:59:15PM +0200, Christoph Hellwig wrote:
> This is always GFP_KERNEL - for long term mappings with other properties
> vmap should be used.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c   | 2 +-
>  drivers/media/common/videobuf2/videobuf2-dma-sg.c  | 3 +--
>  drivers/media/common/videobuf2/videobuf2-vmalloc.c | 3 +--
>  fs/erofs/decompressor.c                            | 2 +-

For EROFS part,

Acked-by: Gao Xiang <xiang@kernel.org>

Thanks,
Gao Xiang


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
