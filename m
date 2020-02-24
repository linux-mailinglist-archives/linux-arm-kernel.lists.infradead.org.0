Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D95169C70
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 03:54:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=83lzLFdSWyXuw38GC+rVIk7zajJdB328N9ghAGTdnoY=; b=OeFOspMrDovT34U0kuUXBvePy
	bTpLoAq4jd/LYaNrW2CyX8krXTtxMWRl+3wMqayCuHKjuAFPIXgjeBCs8jco2I/i4jJgZVLAhxk9z
	TO2GS/Tbpua6L1ItUTFPP6jU14lZsZC+0LAFy7rglGCkAaIgyqZI8n7PfA8Bflt9vb1Tj5/O84y1k
	yCKbbrfpJ+GCfsZxrYFhjy1E9Sx33gBt5tuNKIGIE4c2NI8wmVWrE4b2Js/6Gg0L3HAag2A0U4org
	No3mapUQXD+8qswjK2DdALrS/tQI5a51GSQShfXFltAI7mxmwyNQMkkezveGBALD7b0PeTGDwhL2t
	6xFNZp2PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j63tF-0002ps-NW; Mon, 24 Feb 2020 02:54:37 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j63t4-0002k6-B4
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 02:54:28 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Feb 2020 18:54:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,478,1574150400"; 
 d="gz'50?scan'50,208,50";a="384012307"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 23 Feb 2020 18:54:17 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1j63sv-0000s9-16; Mon, 24 Feb 2020 10:54:17 +0800
Date: Mon, 24 Feb 2020 10:53:56 +0800
From: kbuild test robot <lkp@intel.com>
To: qiwuchen55@gmail.com
Subject: Re: [PATCH] scsi: arm: list_for_each() -> list_for_each_entry()
Message-ID: <202002241028.OqFdJ6lN%lkp@intel.com>
References: <1582436551-14244-1-git-send-email-qiwuchen55@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="x+6KMIRAuhnl3hBn"
Content-Disposition: inline
In-Reply-To: <1582436551-14244-1-git-send-email-qiwuchen55@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_185426_474332_3279C045 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: kbuild-all@lists.01.org, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, jejb@linux.ibm.com, linux@armlinux.org.uk,
 chenqiwu <chenqiwu@xiaomi.com>, linux-arm-kernel@lists.infradead.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--x+6KMIRAuhnl3hBn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on mkp-scsi/for-next]
[also build test ERROR on scsi/for-next v5.6-rc2 next-20200221]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/qiwuchen55-gmail-com/scsi-arm-list_for_each-list_for_each_entry/20200223-140506
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mkp/scsi.git for-next
config: arm-rpc_defconfig (attached as .config)
compiler: arm-linux-gnueabi-gcc (GCC) 7.5.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        GCC_VERSION=7.5.0 make.cross ARCH=arm 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/scsi/arm/queue.c: In function 'queue_remove_exclude':
>> drivers/scsi/arm/queue.c:168:34: error: 'l' undeclared (first use in this function)
       SCpnt = __queue_remove(queue, l);
                                     ^
   drivers/scsi/arm/queue.c:168:34: note: each undeclared identifier is reported only once for each function it appears in
   drivers/scsi/arm/queue.c: In function 'queue_remove_tgtluntag':
   drivers/scsi/arm/queue.c:216:34: error: 'l' undeclared (first use in this function)
       SCpnt = __queue_remove(queue, l);
                                     ^
   drivers/scsi/arm/queue.c: In function 'queue_remove_all_target':
   drivers/scsi/arm/queue.c:240:26: error: 'l' undeclared (first use in this function)
       __queue_remove(queue, l);
                             ^
   drivers/scsi/arm/queue.c: In function 'queue_remove_cmd':
   drivers/scsi/arm/queue.c:288:26: error: 'l' undeclared (first use in this function)
       __queue_remove(queue, l);
                             ^

vim +/l +168 drivers/scsi/arm/queue.c

^1da177e4c3f41 Linus Torvalds     2005-04-16  150  
^1da177e4c3f41 Linus Torvalds     2005-04-16  151  /*
ee0ca6bab394fe Henrik Kretzschmar 2006-10-01  152   * Function: struct scsi_cmnd *queue_remove_exclude (queue, exclude)
^1da177e4c3f41 Linus Torvalds     2005-04-16  153   * Purpose : remove a SCSI command from a queue
^1da177e4c3f41 Linus Torvalds     2005-04-16  154   * Params  : queue   - queue to remove command from
^1da177e4c3f41 Linus Torvalds     2005-04-16  155   *	     exclude - bit array of target&lun which is busy
ee0ca6bab394fe Henrik Kretzschmar 2006-10-01  156   * Returns : struct scsi_cmnd if successful (and a reference), or NULL if no command available
^1da177e4c3f41 Linus Torvalds     2005-04-16  157   */
ee0ca6bab394fe Henrik Kretzschmar 2006-10-01  158  struct scsi_cmnd *queue_remove_exclude(Queue_t *queue, unsigned long *exclude)
^1da177e4c3f41 Linus Torvalds     2005-04-16  159  {
^1da177e4c3f41 Linus Torvalds     2005-04-16  160  	unsigned long flags;
a88583c893a94c chenqiwu           2020-02-23  161  	QE_t *q;
ee0ca6bab394fe Henrik Kretzschmar 2006-10-01  162  	struct scsi_cmnd *SCpnt = NULL;
^1da177e4c3f41 Linus Torvalds     2005-04-16  163  
^1da177e4c3f41 Linus Torvalds     2005-04-16  164  	spin_lock_irqsave(&queue->queue_lock, flags);
a88583c893a94c chenqiwu           2020-02-23  165  	list_for_each_entry(q, &queue->head, list) {
9cb78c16f5dade Hannes Reinecke    2014-06-25  166  		if (!test_bit(q->SCpnt->device->id * 8 +
9cb78c16f5dade Hannes Reinecke    2014-06-25  167  			      (u8)(q->SCpnt->device->lun & 0x7), exclude)) {
^1da177e4c3f41 Linus Torvalds     2005-04-16 @168  			SCpnt = __queue_remove(queue, l);
^1da177e4c3f41 Linus Torvalds     2005-04-16  169  			break;
^1da177e4c3f41 Linus Torvalds     2005-04-16  170  		}
^1da177e4c3f41 Linus Torvalds     2005-04-16  171  	}
^1da177e4c3f41 Linus Torvalds     2005-04-16  172  	spin_unlock_irqrestore(&queue->queue_lock, flags);
^1da177e4c3f41 Linus Torvalds     2005-04-16  173  
^1da177e4c3f41 Linus Torvalds     2005-04-16  174  	return SCpnt;
^1da177e4c3f41 Linus Torvalds     2005-04-16  175  }
^1da177e4c3f41 Linus Torvalds     2005-04-16  176  

:::::: The code at line 168 was first introduced by commit
:::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2

:::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
:::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--x+6KMIRAuhnl3hBn
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
efadiAgAE81dL+sexDWoV5z/ANK5NNvN3QAA

--x+6KMIRAuhnl3hBn
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--x+6KMIRAuhnl3hBn--

