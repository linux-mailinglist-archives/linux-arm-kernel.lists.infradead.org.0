Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AAE1D19AE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 17:42:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tr6i4DaWHLsz6X4IKdQ5dSgI84UlWrup5TUiS8Qf2Hg=; b=SM73/Yd0ZVgA7o
	WrSA55rwkIE5mvsvoiAPrfIwt2REwIurXYAA6PsJPi4zMY1gyNgGlQZP0/m/LofYEiMfsDBPL/63B
	H7ug1hiHbOVZy/OQaK8B9N0wQq4VAUypTKMHD+Lt3shl456GkABwGAoXKlcmE6S/53y4m93Oyj5h7
	HGvVMIefCBD/WZTLAKzD9bE2rPoRBtDMrdBrE6aonAeoxDGOHA2AIw1OP9B4n86IT42WUR1YIcx40
	Bke5YFIQ9vgljQoyw7WsN9HyjgHAsJ1AJfYs2h6us/k6oPvNlYiq80QhyE/+8834pkoxMuGFRRjIn
	6FY1jvy6aOtPc9EDC7sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYtWu-000750-9n; Wed, 13 May 2020 15:42:44 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYtWk-000748-Az
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 15:42:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589384552;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0Rwauy6ze7wp8liue4GeJex+DR2vmusIwZACZsakXMw=;
 b=B+j2Qc3abl26sT7hRxDky2v75IgPamLtbEIND6O4FVZ8l0AHzmKWlhYuGjtOOMpIF/9XI9
 6170H97hEBfHMo8z8A50Mp9RSUmhGpwI6YpL2ykBbPyUJdaSuMAGCib2ZN3LBvY0YBmhcT
 Fz1we6QoBLL3rvNsSCQSEoLlvyvLR2E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-448-FAEBAe3nMHuRznnDVCJ7Ag-1; Wed, 13 May 2020 11:40:17 -0400
X-MC-Unique: FAEBAe3nMHuRznnDVCJ7Ag-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5AAAF107ACF5;
 Wed, 13 May 2020 15:40:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5242E5C1C3;
 Wed, 13 May 2020 15:40:16 +0000 (UTC)
Received: from zmail17.collab.prod.int.phx2.redhat.com
 (zmail17.collab.prod.int.phx2.redhat.com [10.5.83.19])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id C7C1B1809542;
 Wed, 13 May 2020 15:40:15 +0000 (UTC)
Date: Wed, 13 May 2020 11:40:15 -0400 (EDT)
From: Jan Stancek <jstancek@redhat.com>
To: Veronika Kabatova <vkabatov@redhat.com>, cgroups@vger.kernel.org
Message-ID: <1039472143.12305448.1589384415559.JavaMail.zimbra@redhat.com>
In-Reply-To: <1322199095.22739428.1589365183678.JavaMail.zimbra@redhat.com>
References: <cki.495C39BD1A.T35Z6VDJPY@redhat.com>
 <20200513060321.GA17433@willie-the-truck>
 <1322199095.22739428.1589365183678.JavaMail.zimbra@redhat.com>
Subject: =?utf-8?Q?Re:_=E2=9D=8C_FAIL:_Test_report_for_kerne?=
 =?utf-8?Q?l=095.7.0-rc5-51f14e2.cki_(arm-next)?=
MIME-Version: 1.0
X-Originating-IP: [10.43.17.25, 10.4.195.15]
Thread-Topic: =?utf-8?B?4p2MIEZBSUw6?= Test report for kernel
 5.7.0-rc5-51f14e2.cki (arm-next)
Thread-Index: CtSTqRVDaqaioGJOAWPCV364AVfM7Pzqql76
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_084234_570123_38270F30 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: catalin marinas <catalin.marinas@arm.com>,
 Memory Management <mm-qe@redhat.com>, linux-arm-kernel@lists.infradead.org,
 CKI Project <cki-project@redhat.com>, Will Deacon <will@kernel.org>,
 LTP List <ltp@lists.linux.it>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



----- Original Message -----
> >        Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
> >            Commit: 51f14e2c02e8 - Merge branch 'for-next/core' into for-kernelci
> >
> > I'm struggling a bit with this one, please can you confirm that it's not
> > an issue on your end? The failures are related to /dev/cpuset:
> > 
> >   mem.c:760: BROK: mount /dev/cpuset: EBUSY (16)
> >   ...
> >   safe_macros.c:172: BROK: mem.c:750: mkdir(/dev/cpuset,0777) failed:
> >   EEXIST
> >   (17)
> > 
> >   https://cki-artifacts.s3.us-east-2.amazonaws.com/datawarehouse/2020/05/12/564910/LTP/aarch64_2_ltp_mm.fail.log
> > 
> > But we haven't been anywhere near that in the arm64 tree afaik.
> > 
> 
> Hi,
> 
> I suspect this is an LTP bug:
> 
> https://github.com/linux-test-project/ltp/issues/611

[CC cgroups & LTP]

In LTP issue above it was clear that memory controller is in use.
Here it looks like some lingering reference to cpuset controller
that can't be seen in sysfs.

It's triggered by podman tests actually:
1. run podman tests
2. mount -t cgroup -ocpuset cpuset /mnt/cpuset/ -> EBUSY

# mount | grep cgroup
cgroup2 on /sys/fs/cgroup type cgroup2 (rw,nosuid,nodev,noexec,relatime,seclabel)

# grep cpuset -r /sys/fs/cgroup/
/sys/fs/cgroup/cgroup.controllers:cpuset cpu io memory pids

And yet, v1 cgroup fails to mount:

# mount -t cgroup -ocpuset cpuset /mnt/cpuset/
mount: /mnt/cpuset: cpuset already mounted or mount point busy.

Fail state persists also after I disable all controllers and move
all processes to root:

# cat /sys/fs/cgroup/cgroup.subtree_control
# ll /sys/fs/cgroup/
total 0
-r--r--r--. 1 root root 0 May 13 10:35 cgroup.controllers
-rw-r--r--. 1 root root 0 May 13 10:44 cgroup.max.depth
-rw-r--r--. 1 root root 0 May 13 10:44 cgroup.max.descendants
-rw-r--r--. 1 root root 0 May 13 10:58 cgroup.procs
-r--r--r--. 1 root root 0 May 13 10:44 cgroup.stat
-rw-r--r--. 1 root root 0 May 13 11:00 cgroup.subtree_control
-rw-r--r--. 1 root root 0 May 13 10:44 cgroup.threads
-rw-r--r--. 1 root root 0 May 13 10:44 cpu.pressure
-r--r--r--. 1 root root 0 May 13 10:44 cpuset.cpus.effective
-r--r--r--. 1 root root 0 May 13 10:44 cpuset.mems.effective
-rw-r--r--. 1 root root 0 May 13 10:44 io.cost.model
-rw-r--r--. 1 root root 0 May 13 10:44 io.cost.qos
-rw-r--r--. 1 root root 0 May 13 10:44 io.pressure
-rw-r--r--. 1 root root 0 May 13 10:44 memory.pressure

# mount -t cgroup -ocpuset cpuset /mnt/cpuset/
mount: /mnt/cpuset: cpuset already mounted or mount point busy

If I reboot and don't run any podman tests, v1 cgroup mounts fine:

# cat /sys/fs/cgroup/cgroup.controllers
cpuset cpu io memory pids
# mount -t cgroup -ocpuset cpuset /mnt/cpuset/
# cat /sys/fs/cgroup/cgroup.controllers
cpu io memory pids
# umount /mnt/cpuset/
# cat /sys/fs/cgroup/cgroup.controllers
cpuset cpu io memory pids


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
