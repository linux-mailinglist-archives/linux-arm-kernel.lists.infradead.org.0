Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C73B1CF3EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 14:03:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=94s5yptZDLwSHb8kSi6BOe+TQhuGmotlHqv3KFXLxnA=; b=SByZs+kfsRKxQ1
	edxuyRnZp9DwJSqXAZ6HzDPWzoihxXYtqwloliwVzxLhBokHVhzmZtJRY898uRLblvWzzRMLJxJE/
	o9SPrJGJZqr1Y7Q9Hws942J47bINiMu9KTNi0ANFGitzKEZ49sc5d2w9B6sWqwcJjjYhBNLPUc7Mb
	g1NM8L0EdRF5XSW2DmDSUjXb8fvPErBXadBNY8JZ4TY9wP7sBX3zFjXGuVVliyMn/xz1TlTD772wz
	8ThbuBGPotiRV+FRXeFhvBYLYnCIfHQjOJ2VSwabbXhWqMpJgOO+AM8YgzF8MI9Nju8oUmE3kttl/
	YiVg5MqMD1eZVN5Hh9sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYTdA-0001EF-3p; Tue, 12 May 2020 12:03:28 +0000
Received: from out02.mta.xmission.com ([166.70.13.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYTd1-0001DZ-52; Tue, 12 May 2020 12:03:20 +0000
Received: from in02.mta.xmission.com ([166.70.13.52])
 by out02.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.90_1)
 (envelope-from <ebiederm@xmission.com>)
 id 1jYTcs-0000tl-L0; Tue, 12 May 2020 06:03:10 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in02.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1jYTcr-0007id-TX; Tue, 12 May 2020 06:03:10 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: David Hildenbrand <david@redhat.com>
References: <20200501165701.24587-1-james.morse@arm.com>
 <40b07632-b044-d1cd-96a2-81eec3da93e7@redhat.com>
 <8736892l92.fsf@x220.int.ebiederm.org>
 <a1c162fe-74de-c5ca-dadf-d451e970fdea@redhat.com>
 <87h7wmtna1.fsf@x220.int.ebiederm.org>
 <4d5f69b6-fdfd-a461-0ac9-6d05636508f1@redhat.com>
Date: Tue, 12 May 2020 06:59:38 -0500
In-Reply-To: <4d5f69b6-fdfd-a461-0ac9-6d05636508f1@redhat.com> (David
 Hildenbrand's message of "Tue, 12 May 2020 09:45:16 +0200")
Message-ID: <87sgg5s6s5.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1jYTcr-0007id-TX; ; ; mid=<87sgg5s6s5.fsf@x220.int.ebiederm.org>;
 ; ; hst=in02.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX1/rnctvPahPVR1lDa2sHTDjDmoQMCyCAbM=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa07.xmission.com
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG autolearn=disabled
 version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.4981]
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa07 0; Body=1 Fuz1=1 Fuz2=1]
X-Spam-DCC: ; sa07 0; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ;David Hildenbrand <david@redhat.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 286 ms - load_scoreonly_sql: 0.06 (0.0%),
 signal_user_changed: 11 (3.7%), b_tie_ro: 9 (3.3%), parse: 1.37 (0.5%),
 extract_message_metadata: 3.1 (1.1%), get_uri_detail_list: 0.78
 (0.3%), tests_pri_-1000: 3.5 (1.2%), tests_pri_-950: 1.24 (0.4%),
 tests_pri_-900: 1.00 (0.3%), tests_pri_-90: 81 (28.1%), check_bayes:
 79 (27.4%), b_tokenize: 8 (2.8%), b_tok_get_all: 6 (2.1%),
 b_comp_prob: 3.0 (1.0%), b_tok_touch_all: 57 (20.0%), b_finish: 1.04
 (0.4%), tests_pri_0: 166 (58.0%), check_dkim_signature: 0.51 (0.2%),
 check_dkim_adsp: 3.1 (1.1%), poll_dns_idle: 0.62 (0.2%), tests_pri_10:
 2.2 (0.8%), tests_pri_500: 8 (2.9%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH] kexec: Discard loaded image on memory hotplug
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_050319_192332_393FA3D2 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [166.70.13.232 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Baoquan He <bhe@redhat.com>, kexec@lists.infradead.org, linux-mm@kvack.org,
 James Morse <james.morse@arm.com>, Dave Young <dyoung@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

David Hildenbrand <david@redhat.com> writes:
>> 
>> Maybe we have enough information to fixup the loaded kexec image
>> in the kexec_file_load case, we certainly don't in the ordinary
>> kexec_load case.
>
> Yes, that's also what I mentioned in my reply to Baoquan.
>
>> 
>> For now I want to stick to the simplest thing we can do which is either
>> blocking the memory hotplug operation (if that is possible) or
>> dropping the loaded kexec image.
>
> Yes, the latter is the best for now. It's simple.
>
> I am suggesting to add explicit callbacks to
> add_memory()/remove_memory(), and calling the invalidation from there -
> because I see various issues with the memory notifier approach (racy,
> false positives, never called if memory is not onlined).

Ok so we are in agreement.  Correct patch.  Wrong trigger condition.

Eric


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
