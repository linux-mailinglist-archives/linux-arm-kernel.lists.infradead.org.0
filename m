Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DE71A605A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 21:56:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CQYUUE81rU26GoA7qHh2ITr9kLSPe76mTZcQViGrNwI=; b=jHRvasGMHDeZ2t
	1o22Jj++J6EQXFgvhpMg12WGfhq47Vg0XyBwuWXGFr4s9l6b86n3dDUNVYu9NGwlItb8hjinZ3FE7
	5mbRtmVJFgqHZJeTqC91KQE5sgO5FzakMa91d6FfPhAF3ntWq1mLZzE9rBNWypZI98tRSMbX1X58J
	BBDK6n/xVGpjRo/su7DaY4tzom4ARx2IN1vY05f15lyJ2Djuhdyr/xD+gAX1QyBSL9K9C5E+IFvtL
	lYD7loB+ABUQbqpMtbNARDIeqdLIwE1seuftsxqa8g/mSVHmxO4iG8dg22q4+pr35JVUJCc/X5RiA
	icd85PVBNl2icHeDj7+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNiiG-00082G-8z; Sun, 12 Apr 2020 19:56:16 +0000
Received: from out02.mta.xmission.com ([166.70.13.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNiiA-000805-32; Sun, 12 Apr 2020 19:56:11 +0000
Received: from in01.mta.xmission.com ([166.70.13.51])
 by out02.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.90_1)
 (envelope-from <ebiederm@xmission.com>)
 id 1jNihj-00006w-MB; Sun, 12 Apr 2020 13:55:43 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in01.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1jNihi-0007wm-Sv; Sun, 12 Apr 2020 13:55:43 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
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
 <20200412080836.GM25745@shell.armlinux.org.uk>
Date: Sun, 12 Apr 2020 14:52:47 -0500
In-Reply-To: <20200412080836.GM25745@shell.armlinux.org.uk> (Russell King's
 message of "Sun, 12 Apr 2020 09:08:36 +0100")
Message-ID: <87wo6klbw0.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1jNihi-0007wm-Sv; ; ; mid=<87wo6klbw0.fsf@x220.int.ebiederm.org>;
 ; ; hst=in01.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX1/Onci8wlOnfpzEznU3/1Zx87QbWlJfDRA=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa02.xmission.com
X-Spam-Level: **
X-Spam-Status: No, score=2.0 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,XMNoVowels,XMSubLong
 autolearn=disabled version=3.4.2
X-Spam-Virus: No
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.4599] *  0.7 XMSubLong Long Subject
 *  1.5 XMNoVowels Alpha-numberic number with no vowels
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa02 1397; Body=1 Fuz1=1 Fuz2=1]
X-Spam-DCC: XMission; sa02 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: **;Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Spam-Relay-Country: 
X-Spam-Timing: total 250 ms - load_scoreonly_sql: 0.04 (0.0%),
 signal_user_changed: 4.7 (1.9%), b_tie_ro: 3.2 (1.3%), parse: 1.07
 (0.4%), extract_message_metadata: 2.9 (1.2%), get_uri_detail_list:
 0.84 (0.3%), tests_pri_-1000: 3.3 (1.3%), tests_pri_-950: 1.14 (0.5%),
 tests_pri_-900: 0.85 (0.3%), tests_pri_-90: 54 (21.7%), check_bayes:
 53 (21.3%), b_tokenize: 4.2 (1.7%), b_tok_get_all: 5 (2.1%),
 b_comp_prob: 1.20 (0.5%), b_tok_touch_all: 40 (15.9%), b_finish: 0.69
 (0.3%), tests_pri_0: 164 (65.7%), check_dkim_signature: 0.36 (0.1%),
 check_dkim_adsp: 2.7 (1.1%), poll_dns_idle: 1.35 (0.5%), tests_pri_10:
 2.8 (1.1%), tests_pri_500: 7 (2.8%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in01.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_125610_130335_539EBF4A 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [166.70.13.232 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Baoquan He <bhe@redhat.com>, David Hildenbrand <david@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


The only benefit of kexec_file_load is that it is simple enough from a
kernel perspective that signatures can be checked.

kexec_load in every other respect is the more capable and functional
interface.  It makes no sense to get rid of it.

It does make sense to reload with a loaded kernel on memory hotplug.
That is simple and easy.  If we are going to handle something in the
kernel it should simple an automated unloading of the kernel on memory
hotplug.


I think it would be irresponsible to deprecate kexec_load on any
platform.

I also suspect that kexec_file_load could be taught to copy the dtb
on arm32 if someone wants to deal with signatures.

We definitely can not even think of deprecating kexec_load until
architecture that supports it also supports kexec_file_load and everyone
is happy with that interface.  That is Linus's no regression rule.


Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
