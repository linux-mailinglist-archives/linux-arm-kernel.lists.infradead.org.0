Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB01B04EC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 22:38:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:From:Subject:Message-ID:Date:MIME-Version:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jv7i7xHdjobPkWoWDmJ3hqpnxMu7QOptbVe0BJ/9h64=; b=GuEvFhtiI5VRLZ
	Syv5/QLseg3Ez1sfJxiKT7QBOYhoov78kk0askyM3is0fghRpgEiUoziaSzF++pSaJxJHdV0JUwcY
	t1o6Fdvo685EOyH76GqelrheYwT6B5IHKlP70QLdVthqSULOeHFQgPDahiEh7WNtVFaradkYb31xw
	EAy/2avc+lA/C9WvfWziXpVdX2uJj+IRmxNEuFhs0+HcmQs6iNKgsQwjiVo/kVpzjFJnmqjqlst0I
	ZOUGzDQAr64r5oXL5qZ8YEif4Rx1BOPh223UIp6vVU12QwTBzr18HbbEVrOthqzxgHLAYNV3W5R8p
	Slkf3vFavICk4Pin2c2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i89Nm-0002P6-6h; Wed, 11 Sep 2019 20:38:30 +0000
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i89NS-00028P-3L
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 20:38:11 +0000
Received: by mail-io1-f70.google.com with SMTP id k23so12035033iot.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 13:38:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=ee8ij1fsMTh0uHwJT+quuOGaJsdt91kKg2ZDmu+BCC0=;
 b=m8dU/vNqTlR7bJEYS3tfDlY/PXU3uH9d22CU4DfCWYPTjcvKWgK0aoo5mAAXRwu9M9
 9cCTlScX/x5FKaoCzPm6MiFBrvnLR5t3Y6Oh4cGVzbp3e9R76r9VgO0PecqgKht7feTY
 MPykBlgFGsw/h2J3QM4t8Qiumgy9rBalyOmhBVEK3utsND6DNJRPpN8eZgP763Ie2ihQ
 mlADZz98n9vkntWgDoKhpMHvFvPNJN5BG88cIsJIW87wVg+YcR5b+huYZ388w8jSz21u
 cUUF3OfWn9hcdVr1O4UWmYw47/cob+K9IAKssvXah8WmnEGf69Z05+q0U0iY10IvhT8A
 B7Bw==
X-Gm-Message-State: APjAAAV/1SHr6MySOln1S93BL/6kRr0cAjCkpfMXXiyPEFyIPF9t6Bql
 jd7RhhUGbW33d84KS16xAhrhJz1O70swAhuY7fImSqxcw8MG
X-Google-Smtp-Source: APXvYqw9rfSo5Ymg/3J3jah1Q88IIrMyZ433IswC1CR9nIfxAQDM/X3H40kcW61z9hqdkwX1oS4Ft2qaKFSbifiR4zH6P21fw/ML
MIME-Version: 1.0
X-Received: by 2002:a6b:ac85:: with SMTP id v127mr13702362ioe.97.1568234288040; 
 Wed, 11 Sep 2019 13:38:08 -0700 (PDT)
Date: Wed, 11 Sep 2019 13:38:08 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000a9d4f705924cff7a@google.com>
Subject: KASAN: slab-out-of-bounds Read in handle_vmptrld
From: syzbot <syzbot+46f1dd7dbbe2bfb98b10@syzkaller.appspotmail.com>
To: bp@alien8.de, carlo@caione.org, catalin.marinas@arm.com, 
 devicetree@vger.kernel.org, hpa@zytor.com, jmattson@google.com, 
 joro@8bytes.org, khilman@baylibre.com, kvm@vger.kernel.org, 
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, mark.rutland@arm.com, mingo@redhat.com, 
 narmstrong@baylibre.com, pbonzini@redhat.com, rkrcmar@redhat.com, 
 robh+dt@kernel.org, sean.j.christopherson@intel.com, 
 syzkaller-bugs@googlegroups.com, tglx@linutronix.de, vkuznets@redhat.com, 
 wanpengli@tencent.com, will.deacon@arm.com, x86@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_133810_148128_6FDDFCD5 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

syzbot found the following crash on:

HEAD commit:    1e3778cb Merge tag 'scsi-fixes' of git://git.kernel.org/pu..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=15bdfc5e600000
kernel config:  https://syzkaller.appspot.com/x/.config?x=b89bb446a3faaba4
dashboard link: https://syzkaller.appspot.com/bug?extid=46f1dd7dbbe2bfb98b10
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1709421a600000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=168fc4b2600000

The bug was bisected to:

commit a87f854ddcf7ff7e044d72db0aa6da82f26d69a6
Author: Neil Armstrong <narmstrong@baylibre.com>
Date:   Wed Oct 11 15:39:40 2017 +0000

     ARM64: dts: meson-gx: remove unnecessary uart compatible

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=17e78a6e600000
final crash:    https://syzkaller.appspot.com/x/report.txt?x=14178a6e600000
console output: https://syzkaller.appspot.com/x/log.txt?x=10178a6e600000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+46f1dd7dbbe2bfb98b10@syzkaller.appspotmail.com
Fixes: a87f854ddcf7 ("ARM64: dts: meson-gx: remove unnecessary uart  
compatible")

L1TF CPU bug present and SMT on, data leak possible. See CVE-2018-3646 and  
https://www.kernel.org/doc/html/latest/admin-guide/hw-vuln/l1tf.html for  
details.
==================================================================
BUG: KASAN: slab-out-of-bounds in handle_vmptrld  
arch/x86/kvm/vmx/nested.c:4789 [inline]
BUG: KASAN: slab-out-of-bounds in handle_vmptrld+0x777/0x800  
arch/x86/kvm/vmx/nested.c:4749
Read of size 4 at addr ffff888091e10000 by task syz-executor758/10006

CPU: 1 PID: 10006 Comm: syz-executor758 Not tainted 5.3.0-rc7+ #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
Call Trace:
  __dump_stack lib/dump_stack.c:77 [inline]
  dump_stack+0x172/0x1f0 lib/dump_stack.c:113
  print_address_description.cold+0xd4/0x306 mm/kasan/report.c:351
  __kasan_report.cold+0x1b/0x36 mm/kasan/report.c:482
  kasan_report+0x12/0x17 mm/kasan/common.c:618
  __asan_report_load_n_noabort+0xf/0x20 mm/kasan/generic_report.c:142
  handle_vmptrld arch/x86/kvm/vmx/nested.c:4789 [inline]
  handle_vmptrld+0x777/0x800 arch/x86/kvm/vmx/nested.c:4749
  vmx_handle_exit+0x299/0x15e0 arch/x86/kvm/vmx/vmx.c:5886
  vcpu_enter_guest+0x1087/0x5e90 arch/x86/kvm/x86.c:8088
  vcpu_run arch/x86/kvm/x86.c:8152 [inline]
  kvm_arch_vcpu_ioctl_run+0x464/0x1750 arch/x86/kvm/x86.c:8360
  kvm_vcpu_ioctl+0x4dc/0xfd0 arch/x86/kvm/../../../virt/kvm/kvm_main.c:2765
  vfs_ioctl fs/ioctl.c:46 [inline]
  file_ioctl fs/ioctl.c:509 [inline]
  do_vfs_ioctl+0xdb6/0x13e0 fs/ioctl.c:696
  ksys_ioctl+0xab/0xd0 fs/ioctl.c:713
  __do_sys_ioctl fs/ioctl.c:720 [inline]
  __se_sys_ioctl fs/ioctl.c:718 [inline]
  __x64_sys_ioctl+0x73/0xb0 fs/ioctl.c:718
  do_syscall_64+0xfd/0x6a0 arch/x86/entry/common.c:296
  entry_SYSCALL_64_after_hwframe+0x49/0xbe
RIP: 0033:0x447269
Code: 18 89 d0 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 00 48 89 f8 48 89 f7  
48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff  
ff 0f 83 3b d0 fb ff c3 66 2e 0f 1f 84 00 00 00 00
RSP: 002b:00007ffd58df6ad8 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 00007ffd58df6ae0 RCX: 0000000000447269
RDX: 0000000000000000 RSI: 000000000000ae80 RDI: 0000000000000005
RBP: 0000000000000000 R08: 0000000020003800 R09: 0000000000400e80
R10: 00007ffd58df4f20 R11: 0000000000000246 R12: 0000000000404730
R13: 00000000004047c0 R14: 0000000000000000 R15: 0000000000000000

Allocated by task 10006:
  save_stack+0x23/0x90 mm/kasan/common.c:69
  set_track mm/kasan/common.c:77 [inline]
  __kasan_kmalloc mm/kasan/common.c:493 [inline]
  __kasan_kmalloc.constprop.0+0xcf/0xe0 mm/kasan/common.c:466
  kasan_kmalloc+0x9/0x10 mm/kasan/common.c:507
  __do_kmalloc mm/slab.c:3655 [inline]
  __kmalloc+0x163/0x770 mm/slab.c:3664
  kmalloc include/linux/slab.h:557 [inline]
  hcd_buffer_alloc+0x1c6/0x260 drivers/usb/core/buffer.c:132
  usb_alloc_coherent+0x62/0x90 drivers/usb/core/usb.c:910
  usbdev_mmap+0x1ce/0x790 drivers/usb/core/devio.c:224
  call_mmap include/linux/fs.h:1875 [inline]
  mmap_region+0xc35/0x1760 mm/mmap.c:1788
  do_mmap+0x82e/0x1090 mm/mmap.c:1561
  do_mmap_pgoff include/linux/mm.h:2374 [inline]
  vm_mmap_pgoff+0x1c5/0x230 mm/util.c:391
  ksys_mmap_pgoff+0x4aa/0x630 mm/mmap.c:1611
  __do_sys_mmap arch/x86/kernel/sys_x86_64.c:100 [inline]
  __se_sys_mmap arch/x86/kernel/sys_x86_64.c:91 [inline]
  __x64_sys_mmap+0xe9/0x1b0 arch/x86/kernel/sys_x86_64.c:91
  do_syscall_64+0xfd/0x6a0 arch/x86/entry/common.c:296
  entry_SYSCALL_64_after_hwframe+0x49/0xbe

Freed by task 9516:
  save_stack+0x23/0x90 mm/kasan/common.c:69
  set_track mm/kasan/common.c:77 [inline]
  __kasan_slab_free+0x102/0x150 mm/kasan/common.c:455
  kasan_slab_free+0xe/0x10 mm/kasan/common.c:463
  __cache_free mm/slab.c:3425 [inline]
  kfree+0x10a/0x2c0 mm/slab.c:3756
  tomoyo_init_log+0x15ba/0x2070 security/tomoyo/audit.c:293
  tomoyo_supervisor+0x33f/0xef0 security/tomoyo/common.c:2095
  tomoyo_audit_env_log security/tomoyo/environ.c:36 [inline]
  tomoyo_env_perm+0x18e/0x210 security/tomoyo/environ.c:63
  tomoyo_environ security/tomoyo/domain.c:670 [inline]
  tomoyo_find_next_domain+0x1354/0x1f6c security/tomoyo/domain.c:876
  tomoyo_bprm_check_security security/tomoyo/tomoyo.c:107 [inline]
  tomoyo_bprm_check_security+0x124/0x1b0 security/tomoyo/tomoyo.c:97
  security_bprm_check+0x63/0xb0 security/security.c:750
  search_binary_handler+0x71/0x570 fs/exec.c:1645
  exec_binprm fs/exec.c:1701 [inline]
  __do_execve_file.isra.0+0x1333/0x2340 fs/exec.c:1821
  do_execveat_common fs/exec.c:1868 [inline]
  do_execve fs/exec.c:1885 [inline]
  __do_sys_execve fs/exec.c:1961 [inline]
  __se_sys_execve fs/exec.c:1956 [inline]
  __x64_sys_execve+0x8f/0xc0 fs/exec.c:1956
  do_syscall_64+0xfd/0x6a0 arch/x86/entry/common.c:296
  entry_SYSCALL_64_after_hwframe+0x49/0xbe

The buggy address belongs to the object at ffff888091e109c0
  which belongs to the cache kmalloc-8k of size 8192
The buggy address is located 2496 bytes to the left of
  8192-byte region [ffff888091e109c0, ffff888091e129c0)
The buggy address belongs to the page:
page:ffffea0002478400 refcount:2 mapcount:0 mapping:ffff8880aa4021c0  
index:0x0 compound_mapcount: 0
flags: 0x1fffc0000010200(slab|head)
raw: 01fffc0000010200 ffffea000242e608 ffffea0002436708 ffff8880aa4021c0
raw: 0000000000000000 ffff888091e109c0 0000000200000001 0000000000000000
page dumped because: kasan: bad access detected

Memory state around the buggy address:
  ffff888091e0ff00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
  ffff888091e0ff80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
> ffff888091e10000: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
                    ^
  ffff888091e10080: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
  ffff888091e10100: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
==================================================================


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection
syzbot can test patches for this bug, for details see:
https://goo.gl/tpsmEJ#testing-patches

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
