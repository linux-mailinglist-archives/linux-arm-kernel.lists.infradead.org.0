Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E068AEB1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 07:24:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m+ibASeKQTZsmow9NkMn5aPPwkDKMTMDWpf5yDNBFsA=; b=esNmOxbEOt73WY
	JCZd9wFZuSDdhlUUonV9m2VZ/opu3Dm7ur3Awj3ah8/Y3iLWtoLo9WPuqOHNiaMb31+Y16r6j6dhG
	+M/pSXsAiG85FvnmciLkdrXxDYV+nIgpIBKGPsHaVwYxCwDTfLUennqatLKBY21x5gjbuR4L5vkze
	t4SPQq0mCqWSjl9/ym0vGCwFseR2l3B7uGvcdgJcWNsloHawXqODonH9741QP9dzcjFkbrnyVEhij
	HHydEIKNwOPOWPkHlDTiR5lxvs38uUPIqF8HiI92r2n1xDieZpHsubLvxuaMYI49vMedFhnI8mpZW
	Ag08lfy+0vA/EiWMNzWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxPIg-0003Xj-8A; Tue, 13 Aug 2019 05:24:50 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxPIO-0003XJ-55; Tue, 13 Aug 2019 05:24:34 +0000
Received: from [192.168.178.60] ([109.104.47.130]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MPGiR-1hevT50O45-00PbYR; Tue, 13 Aug 2019 07:23:46 +0200
Subject: Re: [PATCH v2 15/34] staging/vc04_services: convert put_page() to
 put_user_page*()
To: john.hubbard@gmail.com, Andrew Morton <akpm@linux-foundation.org>
References: <20190804224915.28669-1-jhubbard@nvidia.com>
 <20190804224915.28669-16-jhubbard@nvidia.com>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <f92a9b35-072c-a452-3248-ded047a9ee7e@i2se.com>
Date: Tue, 13 Aug 2019 07:23:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190804224915.28669-16-jhubbard@nvidia.com>
Content-Language: en-US
X-Provags-ID: V03:K1:WLtnGHSdIdsSOgSCw9gLWN/He07a3vhG8P/jw9q/ZsKCLbsJUeS
 5llVNlt7KE/tvHn+5EOmDYYv4pX1cHVWKOXHtrw4HQWAHuCkTohFsgxlEY0fExapDm8vR8t
 zVIsUr/Bms6Kvxj5sCY8IbKiNL01LBum+j6x95pPZHXG9iG9KDUI7QIiVK2/58tc3NB1jnX
 y7VHJG/KIA+fGCfAbINIQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:e2tiG/LoUCE=:MfCllk8c06iYHLUWJWcKAL
 cdQ1fi1ypP4tC6pu8XAt4M+fU5mGlkjM5ziFPw9nAP5+ICbjFLhxsiDLATVpll3xwUgna69cS
 Ev9bpFgmBYRqbHsiOVM335kNgAU19xY/LXN/GzEuigzotpDhc5IdC4FGsNTdqmIYi0Bx4dgCw
 bLM/SrMXG40Mg1UArtxdqWQvHnINj7yK6JacwPswBAo33CV5S5U4U1PS67DpEMKA7dX0oduGb
 5fQtkN1kvCZEg2/ekJnnb+PAR6KRS8Eu0zqK7cwQwWxs+nxHFNvcdfFolT7waPuKj24rhpnjW
 ZntPcErm15w8EJ72vFuARtCUk4Lh4jU+zYNtoDE6B8RJqr/+yxycmwEDucEbNXrujkaPH72RU
 fWCHjlXjsJS29DRMlBs91cqiKMaK/ktbzSpegz+iLEJq/HkDuPh/jiz/b8w2crkMXTYEXfcIb
 WqkuI5hHrAdEh99xa/X99FupD8F6iZ52Pv/g2glNHL9WlKL41btCn/KodqBqy/glIqHZeYzq2
 SXjRol/t4oy36qgSCQmUGiCt1lssYLkBWOzcxjui5lZUL2V9O7wn91tHl7G+DbqjQzgMyVtBP
 60iHHkwkWe3su3M3o+o4m8sWd9OG5XIToU/4cSDhBQohrRIKKqoUbXAyCJH96bxaYdq/zseIf
 oMsHaN/31pBaLs6MtsAa2tu5PRj9qlBX5kso+Y5up4mj5gl7CfIWyGwpM4gPWtVKv1En5k3ZR
 HR/0MJ6spaP8P86u5+VALfxj2aM5bbcj+ZVczoVE2BIVl4lPQEesVoHHwFc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_222432_488830_EFAC8C5F 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, Suniel Mahesh <sunil.m@techveda.org>,
 Dan Williams <dan.j.williams@intel.com>, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org,
 Ira Weiny <ira.weiny@intel.com>, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 John Hubbard <jhubbard@nvidia.com>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 Mihaela Muraru <mihaela.muraru21@gmail.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, ceph-devel@vger.kernel.org,
 Sidong Yang <realwakka@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-nfs@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 Kishore KP <kishore.p@techveda.org>, linux-fsdevel@vger.kernel.org,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05.08.19 00:48, john.hubbard@gmail.com wrote:
> From: John Hubbard <jhubbard@nvidia.com>
>
> For pages that were retained via get_user_pages*(), release those pages
> via the new put_user_page*() routines, instead of via put_page() or
> release_pages().
>
> This is part a tree-wide conversion, as described in commit fc1d8e7cca2d
> ("mm: introduce put_user_page*(), placeholder versions").
>
> Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>
> Cc: Eric Anholt <eric@anholt.net>
> Cc: Stefan Wahren <stefan.wahren@i2se.com>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Mihaela Muraru <mihaela.muraru21@gmail.com>
> Cc: Suniel Mahesh <sunil.m@techveda.org>
> Cc: Al Viro <viro@zeniv.linux.org.uk>
> Cc: Sidong Yang <realwakka@gmail.com>
> Cc: Kishore KP <kishore.p@techveda.org>
> Cc: linux-rpi-kernel@lists.infradead.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: devel@driverdev.osuosl.org
> Signed-off-by: John Hubbard <jhubbard@nvidia.com>
Acked-by: Stefan Wahren <stefan.wahren@i2se.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
