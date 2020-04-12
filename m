Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F581A5D68
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 10:11:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G0O8ySQZgXW4uzzCwaPLsUuWn/Bb8dQXhGTau9z7dEk=; b=ZajKwy9ecOoV6A
	mnxQF9ncMZrMJO2Gc7djYCE8n6CdlI8k0ai3bL49LXHDmZHBGx5iYstcEu9kj0TXhvlWSOgsMxZY+
	TsohwwGuwLNj44Vr9m3pkpjI02Y7+kOiiAOGNuvkvBdftoHKZzcJKFG9GeAYWN/Z5xvVEQrDuuWm9
	ZKpTdI66ZiOcIe8IvMUHp17vLM13k4fkM4sHHuXAI8kLa/IfSLcGZIoEDl/N3lWEyUwxq4wWrtcYI
	S6HJIUd3oVu1M44Nvkd2ZkP+BP3wRGMD8/8cNbZyKdlQPsBoX/2TQKakw0HQoTMcqldf1kCA2sym2
	2vp8DVnqpf9noo5EF1bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNXhs-0004Ro-DO; Sun, 12 Apr 2020 08:11:08 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNXhh-0001hC-3j; Sun, 12 Apr 2020 08:10:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jF8bSQKCDgzBwhiZE8kr8lc4iXqq6kefQZ2hVV8fUQo=; b=d9XlYLm6IV5pG/uOhqfLUpelX
 gK48+348cNPaSuYZjFtVJct/VFIZFw9fGd1wtijSNJoxYRHB/At7Yd+ueq1OQ4aDWzWE3grPCqaqF
 dQYCqPJEleDHQ1DVMHuze8or4jIRC2hoSsTS2rAdP26rF1I8acZRLsa8imo5dUCuWNS9LUe8zTwdR
 pNOyBL2LfoXSfgOk76H0zxAlvkw01qz51QeWQ3WILpnS84GhosdCc/1FOZ4EdqMm+9L/eVs4/kF+l
 kdIEPlfxYLWVK5UVC6nxOor5ykBbUgdQIJgr4SmDSjOPdJg2xRuB2ZoIC1I2hQdHoaSNWAbHonmLW
 WDQydZJSA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:37346)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jNXfT-0003Wk-TI; Sun, 12 Apr 2020 09:08:40 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jNXfQ-0005rT-N6; Sun, 12 Apr 2020 09:08:36 +0100
Date: Sun, 12 Apr 2020 09:08:36 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Baoquan He <bhe@redhat.com>
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
Message-ID: <20200412080836.GM25745@shell.armlinux.org.uk>
References: <b0443908-e36f-9bc4-4a8a-4206cb782d4b@arm.com>
 <72672e2c-a57a-8df9-0cff-8035cbce7740@redhat.com>
 <34274b02-60ba-eb78-eacd-6dc1146ed3cd@arm.com>
 <80e4d1d7-f493-3f66-f700-86f18002d692@redhat.com>
 <dfacf85f-d79d-8742-7a13-1ac0a67bad04@arm.com>
 <ba481c82-c69e-043c-4b66-2d2c7732cf07@redhat.com>
 <20200410121013.03b609fd572504c03a666f4a@linux-foundation.org>
 <20200411034414.GH2129@MiWiFi-R3L-srv>
 <20200411093009.GH25745@shell.armlinux.org.uk>
 <20200412053507.GA4247@MiWiFi-R3L-srv>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200412053507.GA4247@MiWiFi-R3L-srv>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_011057_156210_40AFAE0A 
X-CRM114-Status: GOOD (  30.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: David Hildenbrand <david@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, James Morse <james.morse@arm.com>,
 Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 12, 2020 at 01:35:07PM +0800, Baoquan He wrote:
> On 04/11/20 at 10:30am, Russell King - ARM Linux admin wrote:
> > On Sat, Apr 11, 2020 at 11:44:14AM +0800, Baoquan He wrote:
> > > Because We tend to use kexec_file_load more and improve/enhance it in the
> > > future, and gradually obsolete the old kexec_load interface which this
> > > patchset is trying to fix on. 
> > 
> > That's not going to happen; 32-bit ARM kexec uses the kexec_load
> > interface rather than the kexec_file_load version, and I see no one
> > with any interest in changing that - and there's users of the former.
> > 
> > I don't see how it's possible to convert 32-bit ARM kexec to the
> > kexec_file_load interface - this assumes that all you have are the
> > kernel, initrd, and commandline, but on 32-bit ARM kexec, we have
> > kernel, initrd and the dtb blob which the user can specify.
> 
> Well, I understand what you said about 32-bit ARM support with only
> kexec_old support thing. That's why I said we tend to obsolete it
> 'GRADUALLY'. It's the existing users who are using kexec_load, and the
> ARCHes which only has kexec_load, make us have to transfer to
> kexec_file_load gradually.
> 
> Comparing with kexec_load, kexec_file_load has only one disadvantage,
> that is some ARCHes only have kexec_load. Otherwise, kexec_file_load
> benefits kexec/kdump developping/maintaining very much. The loading job
> of kexec_file_load is mostly done in kernel, we can get whatever we
> want about kernel information very conveniently to do anything needed.
> For the kexec_load interface, the loading job is mostly done in
> userspace, we have to export kernel information to procfs, sysfs, etc,
> then parse them in kexec_tools, finally passed it to kernel part of
> kexec loading.
> 
> The gradual obsoleting means we may only add
> feature/improvement/enhancement to kexec_file_load. And if a bug fix is
> needed for both kexec_load and kexec_file_load, and the fix is very
> complicated, we may only fix it in kexec_file_load too. Kexec_file_load
> interface is suggested to add if does't have, just port user space part
> to kernel as x86/s390/arm64 have done.
> 
> Surely, it doesn't mean we don't fix the critical/blocker bug with
> kexec_load loading. We still try to do, just are not so eager. In the
> existing product environment, the kexec_load is used, just keep using
> it. Do we bother to change it to kexec_file_load, e.g in our RHEL7
> distros? Certainly not. But in our new product, we will change to use
> kexec_file_load interface. I guess this is similar with arm64. The
> advantage and benefit have been told in the 2nd paragraph.
> 
> 
> As for 32-bit ARM, is it like the old product, we have many in-use systems
> deployed in customers' laboratory? Wondering if ARM continues designing
> new 32-bit ARM cpu, and some companies continue producing tons of 32-bit ARM
> cpus. If yes, I think we need continue taking care of kexec_load if
> 32-bit ARM can't convert to kexec_file_load. If not, it may be not a
> barrier when we consider converting kexec_load to kexec_file_load in
> other ARCHes. We just need keep using it, try to fix those critical/blocker
> bug in kexec_load interface if encountered.
> 
> Finally, comning back to this patchset itself, the issue James spotted
> is not so ciritical, I would say. When I do kexec jumping, I will do
> loading firstly, then trigge jumping. I can think of the case that
> people may load kexec-ed kernel, then do something else, later she/he
> triggers the kexec jumping. These are not necessary steps. As Dave and I
> replied to James in the cover-letter thread, adding a systemd service of
> kexec loading, monitor hotplug uevent, reload it if any hot remove
> happened. This is quite easy to do, I don't see any problem with it, and
> why we don't do like this. 
> 
> My personal opinion, please tell if I miss anything.

All that opinion and hand waving about the benefits of the new
interface is totally irrelevent for 32-bit ARM for the reasons
I stated in my email to which you replied.

Gradual obsolecence or not, the file interface can't be supported
on 32-bit ARM as-is - it is totally inadequate and inferior as an
API compared to the functionality we have with plain kexec_load.
Without that point addressed, kexec_file_load is meaningless for
32-bit ARM.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
