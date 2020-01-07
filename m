Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ADF8132125
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 09:16:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OS4qOfjdEemhbv2OHTsav123/yH19Jgb8POb6Fdpsp8=; b=tINvnQYeyCSsNo
	5o/G4dxIk53BeaKe0SroWknXtbbcIuUZHjR+uMP16HxWegmTvhzDKcrCyQLRyoFrN1ZW0nYJmIV5R
	4vJfWV8osem3OS0qC2EgrUca+DnP6uQWlG7tcXbUZJOkwnOB7eQN2QY+atwUnPX8VQB6hVEknFVTO
	3oT4/E6U87DvPmUtVpSeMg7r5AG93N5mgGJijl09ageiOGCwfnzi6G0fpbovmyhYfqhIxbRZhnbc+
	t4rjD5mTJAg7mtvIaOMcocrytcBq8NzmA6QXNTW+pdPafOkqk3tcDzYdXQA3kG7MILx9R1EZQQYHB
	7MBkRz29NqiFV7Ewwi3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iok2A-0005lB-Lr; Tue, 07 Jan 2020 08:16:14 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iok23-0005l4-VS
 for linux-arm-kernel@bombadil.infradead.org; Tue, 07 Jan 2020 08:16:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tQRGzBqBQsXxOuL/NbiqXr/q4VMtf5bvXfYxY/rMILs=; b=IURKxjbDEMSLexX6C2WxvhYuHk
 gX0sDXXNO28aT20K7vFqtaCuE/NnECCvXM0h5a0vOIRbk0DQxYk7NogNsHULJx+mNYnc9SWKKhuQe
 3EcMEOrJ2gLGghvi6Qx0UaW8vw+vIeji4AGlKqZo9bxrK6j3lURczGQeClMijY5XHw/ogjWdujaZc
 yvKoC8Lf5vGvbTxd5z6MHNoOgT6l3qQRU96BP0rF+Omczt+2jlDrlYy1nClCDBE1NTakobIAVG4bX
 6GGn548umU8GyCTXC2A9wFpteyPS1DujIxbRWhJuvWWcKiAA5o90dkNiuEGhzZ/ssaLiw8pHEbt6g
 SjAe/9QQ==;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iok2R-0005BQ-2y
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 08:16:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578384944;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tQRGzBqBQsXxOuL/NbiqXr/q4VMtf5bvXfYxY/rMILs=;
 b=Sh6qORpfhFpJm6eR3CFDgneP4vq6LXnXsf4x42H17q56hZdUncfsdXLA2Q+f9t3EruZXQC
 SrJayt+h3dMgPvopS85GhLTuSNc7ZMi+5nM6yy3O+x3J41o38kyTzjipfplXHUEKJkOMMr
 N9hXKqDuEb3/+dU6+JbjGjS9qaju0p8=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-356-tH5_l7UlOouI0RRlWAzbSw-1; Tue, 07 Jan 2020 03:15:41 -0500
Received: by mail-wr1-f69.google.com with SMTP id u12so28304433wrt.15
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 00:15:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tQRGzBqBQsXxOuL/NbiqXr/q4VMtf5bvXfYxY/rMILs=;
 b=A/qV1fNB1Fu13npgjLXI0n3sSkQxSnsyhXq2iucq0XL8Xjc1RV/HgWoWsjol3NxS+n
 wComEYtCmuyVj6VkpihCINiHaw045mfBjbNhHHkToPIp4CPb1DO6y6KzPxwnObM+A6cx
 DtkMd+++79UMXQhzMJIj0cK/qBR4H8fDV93bjGVG2RBOSwK6w0jIR+HKrOE65LcBoO1w
 TegZsDlPxzWt/Ru2PvGsxgMAgwaTfbGpvIb7X7kOMmPI62sa84U4eXheTUVEdEFOqRGq
 448qFAWB4WuZHiWFy7urXKux/+gpD3Q0QpbhDna5lryg3DcT2A+qm88ZzpOfZS981FdB
 ixwg==
X-Gm-Message-State: APjAAAUtxEsyQH3WCYuCwG3BYZxZ8h7lqwfIOIZQsIIfXrWHe19xGRcG
 9F/OnsejhC3cYUdS3/YhylBYsJZLHX+rJmzuOoj214L3Ulf3u8YfmBLEfswyf7gObxGkSochVIf
 M3gXUypp7bsilqs15TimtuxJWdrzn+vywTxg=
X-Received: by 2002:a5d:5267:: with SMTP id l7mr114892520wrc.84.1578384940078; 
 Tue, 07 Jan 2020 00:15:40 -0800 (PST)
X-Google-Smtp-Source: APXvYqy9DHrTW+DUcTH1LaiheNkopWqanGcM3GMd4Lf0wM/9aq/WXTFlIAO5KdOmvRM+5ycJvQu6rQ==
X-Received: by 2002:a5d:5267:: with SMTP id l7mr114892476wrc.84.1578384939771; 
 Tue, 07 Jan 2020 00:15:39 -0800 (PST)
Received: from ?IPv6:2001:b07:6468:f312:c6d:4079:b74c:e329?
 ([2001:b07:6468:f312:c6d:4079:b74c:e329])
 by smtp.gmail.com with ESMTPSA id k16sm78641877wru.0.2020.01.07.00.15.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Jan 2020 00:15:38 -0800 (PST)
Subject: Re: [RFC PATCH v9 0/8] Enable ptp_kvm for arm64
To: Jianyong Wu <Jianyong.Wu@arm.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 "maz@kernel.org" <maz@kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 Mark Rutland <Mark.Rutland@arm.com>, "will@kernel.org" <will@kernel.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Steven Price <Steven.Price@arm.com>
References: <20191210034026.45229-1-jianyong.wu@arm.com>
 <HE1PR0801MB1676CFC9A06B6CE800052A99F43C0@HE1PR0801MB1676.eurprd08.prod.outlook.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <bf333cdc-3455-7c64-89c2-014639614904@redhat.com>
Date: Tue, 7 Jan 2020 09:15:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <HE1PR0801MB1676CFC9A06B6CE800052A99F43C0@HE1PR0801MB1676.eurprd08.prod.outlook.com>
Content-Language: en-US
X-MC-Unique: tH5_l7UlOouI0RRlWAzbSw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_081631_243546_7CB4A264 
X-CRM114-Status: GOOD (  24.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Justin He <Justin.He@arm.com>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Steve Capper <Steve.Capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kaly Xin <Kaly.Xin@arm.com>, nd <nd@arm.com>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/01/20 10:38, Jianyong Wu wrote:
> Ping ...
> Any comments to this patch set?

Marc, Will, can you ack it?  Since the sticky point was the detection of
the clocksource and it was solved by Thomas's patch, I don't have any
more problems including it.

Thanks,

Paolo

>> -----Original Message-----
>> From: Jianyong Wu <jianyong.wu@arm.com>
>> Sent: Tuesday, December 10, 2019 11:40 AM
>> To: netdev@vger.kernel.org; yangbo.lu@nxp.com; john.stultz@linaro.org;
>> tglx@linutronix.de; pbonzini@redhat.com; sean.j.christopherson@intel.com;
>> maz@kernel.org; richardcochran@gmail.com; Mark Rutland
>> <Mark.Rutland@arm.com>; will@kernel.org; Suzuki Poulose
>> <Suzuki.Poulose@arm.com>; Steven Price <Steven.Price@arm.com>
>> Cc: linux-kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
>> kvmarm@lists.cs.columbia.edu; kvm@vger.kernel.org; Steve Capper
>> <Steve.Capper@arm.com>; Kaly Xin (Arm Technology China)
>> <Kaly.Xin@arm.com>; Justin He (Arm Technology China)
>> <Justin.He@arm.com>; Jianyong Wu (Arm Technology China)
>> <Jianyong.Wu@arm.com>; nd <nd@arm.com>
>> Subject: [RFC PATCH v9 0/8] Enable ptp_kvm for arm64
>>
>> kvm ptp targets to provide high precision time sync between guest and host
>> in virtualization environment. Here, we enable kvm ptp for arm64.
>> This patch set base on [1][2][3]
>>
>> change log:
>>
>> from v8 to v9:
>> 	(1) move ptp_kvm.h to driver/ptp/
>> 	(2) replace license declaration of ptp_kvm.h the same with other
>> header files in the same directory.
>>
>> from v7 to v8:
>>         (1) separate adding clocksource id for arm_arch_counter as a single patch.
>>         (2) update commit message for patch 4/8.
>>         (3) refine patch 7/8 and patch 8/8 to make them more independent.
>>
>> from v6 to v7:
>>         (1) include the omitted clocksource_id.h in last version.
>>         (2) reorder the header file in patch.
>>         (3) refine some words in commit message to make it more impersonal.
>>
>> from v5 to v6:
>>         (1) apply Mark's patch[4] to get SMCCC conduit.
>>         (2) add mechanism to recognize current clocksource by add
>> clocksouce_id value into struct clocksource instead of method in patch-v5.
>>         (3) rename kvm_arch_ptp_get_clock_fn into
>> kvm_arch_ptp_get_crosststamp.
>>
>> from v4 to v5:
>>         (1) remove hvc delay compensasion as it should leave to userspace.
>>         (2) check current clocksource in hvc call service.
>>         (3) expose current clocksource by adding it to system_time_snapshot.
>>         (4) add helper to check if clocksource is arm_arch_counter.
>>         (5) rename kvm_ptp.c to ptp_kvm_common.c
>>
>> from v3 to v4:
>>         (1) fix clocksource of ptp_kvm to arch_sys_counter.
>>         (2) move kvm_arch_ptp_get_clock_fn into arm_arch_timer.c
>>         (3) subtract cntvoff before return cycles from host.
>>         (4) use ktime_get_snapshot instead of getnstimeofday and
>> get_current_counterval to return time and counter value.
>>         (5) split ktime and counter into two 32-bit block respectively to avoid
>> Y2038-safe issue.
>>         (6) set time compensation to device time as half of the delay of hvc call.
>>         (7) add ARM_ARCH_TIMER as dependency of ptp_kvm for arm64.
>>
>> from v2 to v3:
>>         (1) fix some issues in commit log.
>>         (2) add some receivers in send list.
>>
>> from v1 to v2:
>>         (1) move arch-specific code from arch/ to driver/ptp/
>>         (2) offer mechanism to inform userspace if ptp_kvm service is available.
>>         (3) separate ptp_kvm code for arm64 into hypervisor part and guest part.
>>         (4) add API to expose monotonic clock and counter value.
>>         (5) refine code: remove no necessary part and reconsitution.
>>
>> [1]https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/
>> commit/?h=kvm/hvc&id=125ea89e4a21e2fc5235410f966a996a1a7148bf
>> [2]https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/
>> commit/?h=kvm/hvc&id=464f5a1741e5959c3e4d2be1966ae0093b4dce06
>> [3]https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/
>> commit/?h=kvm/hvc&id=6597490e005d0eeca8ed8c1c1d7b4318ee014681
>> [4]https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/
>> commit/?h=for-next/smccc-conduit-
>> cleanup&id=6b7fe77c334ae59fed9500140e08f4f896b36871
>>
>> Jianyong Wu (6):
>>   psci: let arm_smccc_1_1_invoke available by modules
>>   ptp: Reorganize ptp_kvm modules to make it arch-independent.
>>   clocksource: Add clocksource id for arm arch counter
>>   psci: Add hvc call service for ptp_kvm.
>>   ptp: arm64: Enable ptp_kvm for arm64
>>   kvm: arm64: Add capability check extension for ptp_kvm
>>
>> Mark Rutland (1):
>>   arm/arm64: smccc/psci: add arm_smccc_1_1_get_conduit()
>>
>> Thomas Gleixner (1):
>>   time: Add mechanism to recognize clocksource in time_get_snapshot
>>
>>  drivers/clocksource/arm_arch_timer.c        | 24 ++++++
>>  drivers/firmware/psci/psci.c                | 16 ++++
>>  drivers/ptp/Kconfig                         |  2 +-
>>  drivers/ptp/Makefile                        |  1 +
>>  drivers/ptp/ptp_kvm.h                       | 11 +++
>>  drivers/ptp/ptp_kvm_arm64.c                 | 53 +++++++++++++
>>  drivers/ptp/{ptp_kvm.c => ptp_kvm_common.c} | 77 +++++-------------
>>  drivers/ptp/ptp_kvm_x86.c                   | 87 +++++++++++++++++++++
>>  include/linux/arm-smccc.h                   | 30 ++++++-
>>  include/linux/clocksource.h                 |  6 ++
>>  include/linux/clocksource_ids.h             | 13 +++
>>  include/linux/timekeeping.h                 | 12 +--
>>  include/uapi/linux/kvm.h                    |  1 +
>>  kernel/time/clocksource.c                   |  3 +
>>  kernel/time/timekeeping.c                   |  1 +
>>  virt/kvm/arm/arm.c                          |  1 +
>>  virt/kvm/arm/psci.c                         | 22 ++++++
>>  17 files changed, 294 insertions(+), 66 deletions(-)  create mode 100644
>> drivers/ptp/ptp_kvm.h  create mode 100644 drivers/ptp/ptp_kvm_arm64.c
>> rename drivers/ptp/{ptp_kvm.c => ptp_kvm_common.c} (63%)  create
>> mode 100644 drivers/ptp/ptp_kvm_x86.c  create mode 100644
>> include/linux/clocksource_ids.h
>>
>> --
>> 2.17.1
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
