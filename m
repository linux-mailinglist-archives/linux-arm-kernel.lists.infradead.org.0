Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA288689D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 20:19:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EnGPHNdH0X9mm0qwR0fe2R+mP/EWWu4syJ/tu6N4c5I=; b=mZdntxAt4+ije1
	PZ7QhbihQ0Blpao1H0yZqtO3+rujpl1o1gG6YvAeDK7KaDL4YomLn7JI4KpTTMOQw27K2SFciBlbR
	Xh5nEFMIsLgOuSN3UjVvly8IZ1ZzOH4sdZscRBhQwS3fM6PYK76gGAkE6g1y0qbmx+kvwrTJLSo9F
	VpMpIVfADYI7BA9IogatHTAiF5ZigWjOcS2SKNBrOrEbVtJfjaSxdIl3XeSDHlAaSCnLzfhFRgJKc
	v4eHcywC2jo2Ifscl5rLss+sBjeVj53BgZ3dNaawI/nRYJK32wZMwZ+F6iEG4VGo401cs98kRCBOl
	k6OvX9fbelXgwyc/hNlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvn0D-0005mi-Qv; Thu, 08 Aug 2019 18:19:06 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvn02-0005lG-Hs; Thu, 08 Aug 2019 18:18:55 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d4c678b0000>; Thu, 08 Aug 2019 11:18:52 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Thu, 08 Aug 2019 11:18:50 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Thu, 08 Aug 2019 11:18:50 -0700
Received: from [10.110.48.28] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 8 Aug
 2019 18:18:49 +0000
Subject: Re: [PATCH 00/34] put_user_pages(): miscellaneous call sites
To: "Weiny, Ira" <ira.weiny@intel.com>, Michal Hocko <mhocko@kernel.org>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
 <20190802091244.GD6461@dhcp22.suse.cz>
 <20190802124146.GL25064@quack2.suse.cz>
 <20190802142443.GB5597@bombadil.infradead.org>
 <20190802145227.GQ25064@quack2.suse.cz>
 <076e7826-67a5-4829-aae2-2b90f302cebd@nvidia.com>
 <20190807083726.GA14658@quack2.suse.cz>
 <20190807084649.GQ11812@dhcp22.suse.cz>
 <20190808023637.GA1508@iweiny-DESK2.sc.intel.com>
 <e648a7f3-6a1b-c9ea-1121-7ab69b6b173d@nvidia.com>
 <2807E5FD2F6FDA4886F6618EAC48510E79E79644@CRSMSX101.amr.corp.intel.com>
X-Nvconfidentiality: public
From: John Hubbard <jhubbard@nvidia.com>
Message-ID: <b1b33292-d929-f9ff-dd75-02828228f35e@nvidia.com>
Date: Thu, 8 Aug 2019 11:18:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <2807E5FD2F6FDA4886F6618EAC48510E79E79644@CRSMSX101.amr.corp.intel.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1565288332; bh=JXH0z+PATu5ChINAttu0xw8NI7VYrjVhdTogRmB3Q5s=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=Ne1ScLdQ+tu5qOaISiLlk/MzD+D0tWGCUEcW8KATp/99KORz80qhTvSS0MA86k71v
 1gG74XZNfpVRbFXyQsXs+wV66Ly/i7Omeym8buU22OwtUh/B674iBCJPOoXFe5hxmV
 1e7OUBsDbdwXkl/h4Pjx1eOWT4qAVANZ24jESe93raeMkGLORABLpzcfJ+l/YUvFr/
 bUBCYBUk9JXLyxcXRRJ6Qo5DLPNTbuOY1/JVx8JLOWf78tx+O5w4P2ZxYGmo4q53CG
 aum+FjJWUhUsxhssDMyUyjXEHRPMBfcGtXYtpdJqmbhfodN4x0QDM6mw3fwyew2GF4
 p5OXETBP5SbRg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_111854_607628_895A95A0 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-fbdev@vger.kernel.org" <linux-fbdev@vger.kernel.org>,
 Jan Kara <jack@suse.cz>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>, "Williams,
 Dan J" <dan.j.williams@intel.com>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "rds-devel@oss.oracle.com" <rds-devel@oss.oracle.com>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "x86@kernel.org" <x86@kernel.org>, Matthew Wilcox <willy@infradead.org>,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 "devel@lists.orangefs.org" <devel@lists.orangefs.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 "linux-rpi-kernel@lists.infradead.org" <linux-rpi-kernel@lists.infradead.org>,
 "ceph-devel@vger.kernel.org" <ceph-devel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-nfs@vger.kernel.org" <linux-nfs@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "linux-xfs@vger.kernel.org" <linux-xfs@vger.kernel.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/8/19 9:25 AM, Weiny, Ira wrote:
>>
>> On 8/7/19 7:36 PM, Ira Weiny wrote:
>>> On Wed, Aug 07, 2019 at 10:46:49AM +0200, Michal Hocko wrote:
>>>> On Wed 07-08-19 10:37:26, Jan Kara wrote:
>>>>> On Fri 02-08-19 12:14:09, John Hubbard wrote:
>>>>>> On 8/2/19 7:52 AM, Jan Kara wrote:
>>>>>>> On Fri 02-08-19 07:24:43, Matthew Wilcox wrote:
>>>>>>>> On Fri, Aug 02, 2019 at 02:41:46PM +0200, Jan Kara wrote:
>>>>>>>>> On Fri 02-08-19 11:12:44, Michal Hocko wrote:
>>>>>>>>>> On Thu 01-08-19 19:19:31, john.hubbard@gmail.com wrote:
>>   [...]
> Yep I can do this.  I did not realize that Andrew had accepted any of this work.  I'll check out his tree.  But I don't think he is going to accept this series through his tree.  So what is the ETA on that landing in Linus' tree?
> 

I'd expect it to go into 5.4, according to my understanding of how
the release cycles are arranged.


> To that point I'm still not sure who would take all this as I am now touching mm, procfs, rdma, ext4, and xfs.
> 
> I just thought I would chime in with my progress because I'm to a point where things are working and so I can submit the code but I'm not sure what I can/should depend on landing...  Also, now that 0day has run overnight it has found issues with this rebase so I need to clean those up...  Perhaps I will base on Andrew's tree prior to doing that...

I'm certainly not the right person to answer, but in spite of that, I'd think
Andrew's tree is a reasonable place for it. Sort of.

thanks,
-- 
John Hubbard
NVIDIA

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
