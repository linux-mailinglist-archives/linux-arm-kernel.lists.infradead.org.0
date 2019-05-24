Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE37C29994
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 16:00:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H8NqfBNvq7eu4EdcecDMDmpqJR4caG2APlIJfI6/Ipw=; b=J9sn9imX6Pfq7D
	H76V4ErtR4I0pWiyDTI1z0jG+b/1uFEEFyiCm+EHoywkjhrWd9iyqEaIphpJsS3q3FIhzpoof2bDw
	MsOKeISbvcifYBvKvePGKUw9jHxUU7M0sTolmPBPQQ2lbkhVeWfoqeUNVkc9t3vZbOSTFDcTgQI3k
	DnKONGQD8F8/arhBgz2b/ur/WbHTbxqWe75Q+YzeGGXKEKHzO6hupfh7twWurcqLvzhy2J+G95NhV
	6WxsjaYC8fRBRIaUfnZSLJQph8XmxfD8gL5Q+8sci+HhTCW4B229JfHUMYzo8yEJfgbGJaTTO9y1O
	k/ocBnB52HvntIDCUu6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUAkJ-00063d-Gy; Fri, 24 May 2019 14:00:31 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUAkB-00062v-LL
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 14:00:25 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 07:00:22 -0700
X-ExtLoop1: 1
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 24 May 2019 07:00:20 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hUAk6-0004m4-7M; Fri, 24 May 2019 22:00:18 +0800
Date: Fri, 24 May 2019 21:59:48 +0800
From: kbuild test robot <lkp@intel.com>
To: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Subject: Re: [PATCH v2] video: fbdev: atmel_lcdfb: add COMPILE_TEST support
Message-ID: <201905242155.D1bXuUk9%lkp@intel.com>
References: <f9d56fc1-3e02-9716-b764-82e9600e5919@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f9d56fc1-3e02-9716-b764-82e9600e5919@samsung.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_070023_750749_D6C16359 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>, kbuild-all@01.org,
 linux-fbdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bartlomiej,

I love your patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[also build test WARNING on v5.2-rc1 next-20190524]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Bartlomiej-Zolnierkiewicz/video-fbdev-atmel_lcdfb-add-COMPILE_TEST-support/20190524-184331
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-rc1-7-g2b96cd8-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/video/fbdev/atmel_lcdfb.c:354:27: sparse: sparse: incorrect type in assignment (different address spaces) @@    expected char [noderef] <asn:2> *screen_base @@    got n:2> *screen_base @@
>> drivers/video/fbdev/atmel_lcdfb.c:354:27: sparse:    expected char [noderef] <asn:2> *screen_base
>> drivers/video/fbdev/atmel_lcdfb.c:354:27: sparse:    got void *
>> drivers/video/fbdev/atmel_lcdfb.c:362:9: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void *s @@    got char [noderef] <asvoid *s @@
>> drivers/video/fbdev/atmel_lcdfb.c:362:9: sparse:    expected void *s
>> drivers/video/fbdev/atmel_lcdfb.c:362:9: sparse:    got char [noderef] <asn:2> *screen_base
>> drivers/video/fbdev/atmel_lcdfb.c:333:59: sparse: sparse: incorrect type in argument 3 (different address spaces) @@    expected void *cpu_addr @@    got char [noderef] <asvoid *cpu_addr @@
>> drivers/video/fbdev/atmel_lcdfb.c:333:59: sparse:    expected void *cpu_addr
   drivers/video/fbdev/atmel_lcdfb.c:333:59: sparse:    got char [noderef] <asn:2> *screen_base
>> drivers/video/fbdev/atmel_lcdfb.c:333:59: sparse: sparse: incorrect type in argument 3 (different address spaces) @@    expected void *cpu_addr @@    got char [noderef] <asvoid *cpu_addr @@
>> drivers/video/fbdev/atmel_lcdfb.c:333:59: sparse:    expected void *cpu_addr
   drivers/video/fbdev/atmel_lcdfb.c:333:59: sparse:    got char [noderef] <asn:2> *screen_base

vim +354 drivers/video/fbdev/atmel_lcdfb.c

14340586 drivers/video/atmel_lcdfb.c       Nicolas Ferre      2007-05-10  328  
14340586 drivers/video/atmel_lcdfb.c       Nicolas Ferre      2007-05-10  329  static inline void atmel_lcdfb_free_video_memory(struct atmel_lcdfb_info *sinfo)
14340586 drivers/video/atmel_lcdfb.c       Nicolas Ferre      2007-05-10  330  {
14340586 drivers/video/atmel_lcdfb.c       Nicolas Ferre      2007-05-10  331  	struct fb_info *info = sinfo->info;
14340586 drivers/video/atmel_lcdfb.c       Nicolas Ferre      2007-05-10  332  
f6e45661 drivers/video/fbdev/atmel_lcdfb.c Luis R. Rodriguez  2016-01-22 @333  	dma_free_wc(info->device, info->fix.smem_len, info->screen_base,
f6e45661 drivers/video/fbdev/atmel_lcdfb.c Luis R. Rodriguez  2016-01-22  334  		    info->fix.smem_start);
14340586 drivers/video/atmel_lcdfb.c       Nicolas Ferre      2007-05-10  335  }
14340586 drivers/video/atmel_lcdfb.c       Nicolas Ferre      2007-05-10  336  
14340586 drivers/video/atmel_lcdfb.c       Nicolas Ferre      2007-05-10  337  /**
14340586 drivers/video/atmel_lcdfb.c       Nicolas Ferre      2007-05-10  338   *	atmel_lcdfb_alloc_video_memory - Allocate framebuffer memory
14340586 drivers/video/atmel_lcdfb.c       Nicolas Ferre      2007-05-10  339   *	@sinfo: the frame buffer to allocate memory for
1d01e835 drivers/video/atmel_lcdfb.c       Krzysztof Helt     2009-07-08  340   * 	
1d01e835 drivers/video/atmel_lcdfb.c       Krzysztof Helt     2009-07-08  341   * 	This function is called only from the atmel_lcdfb_probe()
1d01e835 drivers/video/atmel_lcdfb.c       Krzysztof Helt     2009-07-08  342   * 	so no locking by fb_info->mm_lock around smem_len setting is needed.
14340586 drivers/video/atmel_lcdfb.c       Nicolas Ferre      2007-05-10  343   */
14340586 drivers/video/atmel_lcdfb.c       Nicolas Ferre      2007-05-10  344  static int atmel_lcdfb_alloc_video_memory(struct atmel_lcdfb_info *sinfo)
14340586 drivers/video/atmel_lcdfb.c       Nicolas Ferre      2007-05-10  345  {
14340586 drivers/video/atmel_lcdfb.c       Nicolas Ferre      2007-05-10  346  	struct fb_info *info = sinfo->info;
14340586 drivers/video/atmel_lcdfb.c       Nicolas Ferre      2007-05-10  347  	struct fb_var_screeninfo *var = &info->var;
ea757aca drivers/video/atmel_lcdfb.c       Haavard Skinnemoen 2008-08-12  348  	unsigned int smem_len;
14340586 drivers/video/atmel_lcdfb.c       Nicolas Ferre      2007-05-10  349  
ea757aca drivers/video/atmel_lcdfb.c       Haavard Skinnemoen 2008-08-12  350  	smem_len = (var->xres_virtual * var->yres_virtual
14340586 drivers/video/atmel_lcdfb.c       Nicolas Ferre      2007-05-10  351  		    * ((var->bits_per_pixel + 7) / 8));
ea757aca drivers/video/atmel_lcdfb.c       Haavard Skinnemoen 2008-08-12  352  	info->fix.smem_len = max(smem_len, sinfo->smem_len);
14340586 drivers/video/atmel_lcdfb.c       Nicolas Ferre      2007-05-10  353  
f6e45661 drivers/video/fbdev/atmel_lcdfb.c Luis R. Rodriguez  2016-01-22 @354  	info->screen_base = dma_alloc_wc(info->device, info->fix.smem_len,
f6e45661 drivers/video/fbdev/atmel_lcdfb.c Luis R. Rodriguez  2016-01-22  355  					 (dma_addr_t *)&info->fix.smem_start,
f6e45661 drivers/video/fbdev/atmel_lcdfb.c Luis R. Rodriguez  2016-01-22  356  					 GFP_KERNEL);
14340586 drivers/video/atmel_lcdfb.c       Nicolas Ferre      2007-05-10  357  
14340586 drivers/video/atmel_lcdfb.c       Nicolas Ferre      2007-05-10  358  	if (!info->screen_base) {
14340586 drivers/video/atmel_lcdfb.c       Nicolas Ferre      2007-05-10  359  		return -ENOMEM;
14340586 drivers/video/atmel_lcdfb.c       Nicolas Ferre      2007-05-10  360  	}
14340586 drivers/video/atmel_lcdfb.c       Nicolas Ferre      2007-05-10  361  
01d3a5e7 drivers/video/atmel_lcdfb.c       Haavard Skinnemoen 2008-04-28 @362  	memset(info->screen_base, 0, info->fix.smem_len);
01d3a5e7 drivers/video/atmel_lcdfb.c       Haavard Skinnemoen 2008-04-28  363  
14340586 drivers/video/atmel_lcdfb.c       Nicolas Ferre      2007-05-10  364  	return 0;
14340586 drivers/video/atmel_lcdfb.c       Nicolas Ferre      2007-05-10  365  }
14340586 drivers/video/atmel_lcdfb.c       Nicolas Ferre      2007-05-10  366  

:::::: The code at line 354 was first introduced by commit
:::::: f6e45661f9be546811b62b2b01f32f4bf0c436c0 dma, mm/pat: Rename dma_*_writecombine() to dma_*_wc()

:::::: TO: Luis R. Rodriguez <mcgrof@suse.com>
:::::: CC: Ingo Molnar <mingo@kernel.org>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
