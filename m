Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26271340A5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 09:48:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q0FAxqR7rOrGYblNl2tkoh2iKDHnRaylopWaHj6poFg=; b=MxIMkOILeCpZd9
	4yDJ/AoRIO/yBrV3uyNjkl05VRqhBt+JGive1zaO3ImgNo9KuWYdE5N5GtraJ4nK90a0PtmkZULM3
	uRsysP6vOJzaF3EwuoetDWivtwajADFIk4gcLCtPoBV3vp/AElnWdinsRRmvgBNJxjCxuVz8PR9xw
	km5VnPopRTIyq6dlqCp4loXZKzgdMQUPQPhfMGHBmhz44RshGyt6a4GTCZ28ZiTqAThzIp7ByfBHw
	3f/vsaZdfDxrCzqUA2Zfbv04VwloaortifPhzIi3Zt/c93xv8y9gcyjYT+Jj5gkd63qhdZTwrfaUM
	Ft6MaQgnYJf1UkPbPVGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4Ay-0003Or-FX; Tue, 04 Jun 2019 07:48:08 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4Aq-0003Nq-8i; Tue, 04 Jun 2019 07:48:01 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 00:47:59 -0700
X-ExtLoop1: 1
Received: from pipin.fi.intel.com (HELO pipin) ([10.237.72.175])
 by fmsmga008.fm.intel.com with ESMTP; 04 Jun 2019 00:47:56 -0700
From: Felipe Balbi <felipe.balbi@linux.intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH v4] usb: create usb_debug_root for gadget only
In-Reply-To: <20190604073706.GA25045@kroah.com>
References: <1559633647-29040-1-git-send-email-chunfeng.yun@mediatek.com>
 <20190604073706.GA25045@kroah.com>
Date: Tue, 04 Jun 2019 10:47:55 +0300
Message-ID: <87k1e123mc.fsf@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_004800_320583_A84218F9 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi,

Greg Kroah-Hartman <gregkh@linuxfoundation.org> writes:
>> +struct dentry *usb_debugfs_init(void)
>> +{
>> +	if (!usb_debug_root)
>> +		usb_debug_root = debugfs_create_dir("usb", NULL);
>> +
>> +	atomic_inc(&usb_debug_root_refcnt);
>> +
>> +	return usb_debug_root;
>> +}
>> +EXPORT_SYMBOL_GPL(usb_debugfs_init);
>> +
>> +void usb_debugfs_cleanup(void)
>> +{
>> +	if (atomic_dec_and_test(&usb_debug_root_refcnt)) {
>> +		debugfs_remove_recursive(usb_debug_root);
>> +		usb_debug_root = NULL;
>> +	}
>> +}
>> +EXPORT_SYMBOL_GPL(usb_debugfs_cleanup);
>
> Only remove the debugfs subdir if the usbcore module is removed.  Create
> the debugfs subdir when the usbcore module is loaded.  No need for any
> reference counting of any sort at all.  No need to overthink this :)

There is a slight need to overthink. He wants to use the same directory
for gadget-only builds too :-)

-- 
balbi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
