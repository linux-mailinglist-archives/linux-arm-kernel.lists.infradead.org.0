Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A0530822
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 07:45:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rKrazFxs8RqDXxj31+cEqrjCpfL1AtXTutIiJF9VEgM=; b=GktEZ/IW/vkM/D
	D4Ch2YKUo5R2sljsYbceFNEfwXJ6G2VZOzN/XoSKTFzH8crtOFHOBnpxut3Gb0ZFfBk1PCVIWcNUb
	iCS3pJ2eFMErJL1aBTu5yi3PH7klymM6Ars89VO1shCyncffLwQyN5/9wp1dr7x6d2ll1O5APC/Pn
	0ZMhSsJftbA5tn3+RFIiM5vVsnqsot0x9tcCBV0QUkHF5DIUJ3x2eKCiGKAdi3VqhRDEvUQ1VGkBr
	KDrHVwWByC6/Zk3L1iHRQVAL5yhABxZZtck0Xiw3J0cDdEjWDWTKsJ+wiBHTvEN1M+2yYZgrtK6fz
	84XqFRJJBi3qNGYgXj6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWaLo-0007yK-Lm; Fri, 31 May 2019 05:45:12 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWaLf-0007DE-Kr; Fri, 31 May 2019 05:45:05 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 May 2019 22:44:58 -0700
X-ExtLoop1: 1
Received: from pipin.fi.intel.com (HELO pipin) ([10.237.72.175])
 by orsmga003.jf.intel.com with ESMTP; 30 May 2019 22:44:55 -0700
From: Felipe Balbi <felipe.balbi@linux.intel.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [v3 PATCH] usb: create usb_debug_root for gadget only
In-Reply-To: <1559201499.8487.40.camel@mhfsdcap03>
References: <cffd6d75f69e4d908c8f39b8a60ddae27d6b7c88.1559028752.git.chunfeng.yun@mediatek.com>
 <87k1ebj8vt.fsf@linux.intel.com> <1559201499.8487.40.camel@mhfsdcap03>
Date: Fri, 31 May 2019 08:44:55 +0300
Message-ID: <87sgsv2n54.fsf@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_224503_741215_61D6A9B8 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
Cc: linux-usb@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi,

Chunfeng Yun <chunfeng.yun@mediatek.com> writes:

> Hi Felipe,
> On Tue, 2019-05-28 at 11:11 +0300, Felipe Balbi wrote:
>> Hi,
>> 
>> Chunfeng Yun <chunfeng.yun@mediatek.com> writes:
>> > diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
>> > index 7fcb9f782931..88b3ee03a12d 100644
>> > --- a/drivers/usb/core/usb.c
>> > +++ b/drivers/usb/core/usb.c
>> > @@ -1190,7 +1190,7 @@ EXPORT_SYMBOL_GPL(usb_debug_root);
>> >  
>> >  static void usb_debugfs_init(void)
>> >  {
>> > -	usb_debug_root = debugfs_create_dir("usb", NULL);
>> > +	usb_debug_root = debugfs_create_dir(USB_DEBUG_ROOT_NAME, NULL);
>> >  	debugfs_create_file("devices", 0444, usb_debug_root, NULL,
>> >  			    &usbfs_devices_fops);
>> >  }
>> 
>> might be a better idea to move this to usb common. Then have a function
>> which can be called by both host and gadget to maybe create the
>> directory:
>> 
>> static struct dentry *usb_debug_root;
>> 
>> struct dentry *usb_debugfs_init(void)
>> {
>> 	if (!usb_debug_root)
>>         	usb_debug_root = debugfs_create_dir("usb", NULL);
>> 
>> 	return usb_debug_root;
>> }
>> 
>> 
>> Then usb core would be updated to something like:
>> 
>> static void usb_core_debugfs_init(void)
>> {
>> 	struct dentry *root = usb_debugfs_init();
>> 
>> 	debugfs_create_file("devices", 0444, root, NULL, &usbfs_devices_fops);
>> }
>> 
> I find a problem when move usb_debugfs_init() and usb_debugfs_cleanup()
> into usb common, it's easy to create "usb" directory, but difficult to
> cleanup it:
>
> common/common.c
>
> struct dentry *usb_debugfs_init(void)
> {
>     if (!usb_debug_root)
>         usb_debug_root = debugfs_create_dir("usb", NULL);
>
>     return usb_debug_root;
> }
>
> void usb_debugfs_cleanup(void)
> {
>     debugfs_remove_recursive(usb_debug_root);
>     usb_debug_root = NULL;
> }
>
> core/usb.c
>
> static void usb_core_debugfs_init(void)
> {
>     struct dentry *root = usb_debugfs_init();
>
>     debugfs_create_file("devices", 0444, root, NULL,
> &usbfs_devices_fops);
> }
>
> static int __init usb_init(void)
> {
>     ...
>     usb_core_debugfs_init();
>     ...
> }
>
> static void __exit usb_exit(void)
> {
>     ...
>     usb_debugfs_cleanup();
>     // will be error, gadget may use it.
>     ...
> }
>
> gadget/udc/core.c
>
> static int __init usb_udc_init(void)
> {
>     ...
>     usb_debugfs_init();
>     ...
> }
>
> static void __exit usb_udc_exit(void)
> {
>     ...
>     usb_debugfs_cleanup();
>     // can't cleanup in fact, usb core may use it.
> }
>
> How to handle this case? introduce a reference count? do you have any
> suggestion?

I guess a simple refcount is the way to go:

struct dentry *usb_debugfs_init(void)
{
	if (!usb_debug_root)
		usb_debug_root = debugfs_create_dir("usb", NULL);

	usb_debug_root_refcnt++;
	return usb_debug_root;
}

void usb_debugfs_cleanup(void)
{
	if (!(--usb_debug_root_refcnt)) {
		debugfs_remove_recursive(usb_debug_root);
		usb_debug_root = NULL;
	}
}

Or something along those lines

-- 
balbi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
