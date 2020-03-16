Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A2C1867AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 10:17:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:MIME-Version:In-Reply-To:
	Subject:To:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=MrY8znBYA6awDs/wZ2gd0XBXfCrnzQ8WcyOtpbHKuM4=; b=FayxJIexnZsf3o
	BV9LtF67tSuhIbgRn65TXvofsNmYJyQCE3VDOT5nMbBqMNCq8m6vnhLpJ/8/8Sf+QA+Zph7lZk/DW
	XsvQEo8OqroM/IzrD5FeMFkzDdiJ2Rw4t+hQgbQLtOHPCVL2vDik9IPwAbYgerESyyGWYLUZ6nX2z
	mjAR49nbQgErSy77gNz8KWX0q1wO6kxS3SIFUuxPoNpdCFMJziDuif/j89BthmE01Rg7ktGVRaGog
	pk9QtxtEe1rZbXGVsP85QrjFUKlKO9F87KCBVbMT7kI3aHMFlgdntkRCfsgVenCp2sR/r7ohmsNlc
	ZG5LygMTHqai49DNBHig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDlsd-00075Q-7b; Mon, 16 Mar 2020 09:17:51 +0000
Received: from m176148.mail.qiye.163.com ([59.111.176.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDlsU-00074b-FR
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 09:17:45 +0000
Received: from vivo.com (wm-8.qy.internal [127.0.0.1])
 by m176148.mail.qiye.163.com (Hmail) with ESMTP id A20D81A3EA2;
 Mon, 16 Mar 2020 17:17:36 +0800 (CST)
Message-ID: <AOAAuQCVCHmM4WW4PQrFj4rw.3.1584350256616.Hmail.wei.zheng@vivo.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: =?UTF-8?B?UmU6IFtQQVRDSCB2MixSRVNFTkRdIGJ0cmZzOiBmaXggdGhlIGR1cGxpY2F0ZWQgZGVmaW5pdGlvbiBvZiAnaW5vZGVfaXRlbV9lcnIn?=
X-Priority: 3
X-Mailer: HMail Webmail Server V2.0 Copyright (c) 2016-163.com
X-Originating-IP: 58.251.74.227
In-Reply-To: <20200316082021.GA3146292@kroah.com>
MIME-Version: 1.0
Received: from wei.zheng@vivo.com( [58.251.74.227) ] by ajax-webmail (
 [127.0.0.1] ) ; Mon, 16 Mar 2020 17:17:36 +0800 (GMT+08:00)
From: =?UTF-8?B?6YOR5Lyf?= <wei.zheng@vivo.com>
Date: Mon, 16 Mar 2020 17:17:36 +0800 (GMT+08:00)
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZT1VCSEJLS0tKSUJNQkJMSllXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kJHlYWEh9ZQUhNTEpITkpMTExPN1dZDB4ZWUEPCQ4eV1kSHx4VD1lB
 WUc6NDo6Dio4LTgzFjZPLCxPKyoJPRFPCQxVSFVKTkNPSE5LSU5NTE1JVTMWGhIXVQweElUBEx4V
 HDsNEg0UVRgUFkVZV1kSC1lBWU5DVUlOSlVMT1VJSUxZV1kIAVlBT0JKTDcG
X-HM-Tid: 0a70e2a25e2a9394kuwsa20d81a3ea2
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_021742_785320_1EFEAE45 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [59.111.176.148 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: linux-arm-kernel@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 kernel@vivo.com, Catalin Marinas <catalin.marinas@arm.com>,
 Josef Bacik <josef@toxicpanda.com>, linux-kernel@vger.kernel.org,
 Chris Mason <clm@fb.com>, Yunfeng Ye <yeyunfeng@huawei.com>,
 Hanjun Guo <guohanjun@huawei.com>, David Sterba <dsterba@suse.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-btrfs@vger.kernel.org,
 Will Deacon <will@kernel.org>, wenhu.wang@vivo.com,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: 2020-03-16 16:20:21
To:  Zheng Wei <wei.zheng@vivo.com>
Cc:  Catalin Marinas <catalin.marinas@arm.com>,Will Deacon <will@kernel.org>,Chris Mason <clm@fb.com>,Josef Bacik <josef@toxicpanda.com>,David Sterba <dsterba@suse.com>,Allison Randal <allison@lohutok.net>,Hanjun Guo <guohanjun@huawei.com>,Enrico Weigelt <info@metux.net>,Yunfeng Ye <yeyunfeng@huawei.com>,Thomas Gleixner <tglx@linutronix.de>,linux-arm-kernel@lists.infradead.org,linux-kernel@vger.kernel.org,linux-btrfs@vger.kernel.org,kernel@vivo.com,wenhu.wang@vivo.com
Subject: Re: [PATCH v2,RESEND] btrfs: fix the duplicated definition of 'inode_item_err'>On Mon, Mar 16, 2020 at 11:45:57AM +0800, Zheng Wei wrote:
>> remove the duplicated definition of 'inode_item_err'
>> in the file tree-checker.c
>> 
>> Signed-off-by: Zheng Wei <wei.zheng@vivo.com>
>> ---
>> 
>> changelog
>> v1 -> v2
>>  - resend for the failure of delivery to some recipients.
>> 
>>  fs/btrfs/tree-checker.c | 4 ----
>>  1 file changed, 4 deletions(-)
>
>Your choice of people to send this patch to is very odd:
>
>$ ./scripts/get_maintainer.pl --file fs/btrfs/tree-checker.c
>Chris Mason <clm@fb.com> (maintainer:BTRFS FILE SYSTEM)
>Josef Bacik <josef@toxicpanda.com> (maintainer:BTRFS FILE SYSTEM)
>David Sterba <dsterba@suse.com> (maintainer:BTRFS FILE SYSTEM)
>linux-btrfs@vger.kernel.org (open list:BTRFS FILE SYSTEM)
>linux-kernel@vger.kernel.org (open list)
>
so sorry for this,
as a new submitter, I used 'scripts/get_maintainer.pl my patch' command to get the mailing list.
I'll pay more attention next time.

Thanks,
Zheng Wei
>
>Please be more mindful.
>
>thanks,
>
>greg k-h


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
