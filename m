Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54762130C46
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 04:00:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:References:To:Subject:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4lLYwQnVVQsm+jpf1KGxdFfR805qRt/vbxrIdelBwJ4=; b=cXInRS8efZANwH5QSI3V7iUjq
	LZTGdnl1l5tfcTiCLvr6uoYBmCNOFg86ehpDPnxo3BrVySxzfyua/J3W3WB78ANHi/jsWa9aMjsve
	NT4GzpNEfJzARspJP7EjxKoJal2Wby+xSX6DK3aBipvuAWOeECyci+vtg0haZ03FRn/gxzXt6+4FX
	EnR0lSVh8i2S+onom+kIsFDiTR6sVq9rdILhP6++IOJhuzMSm9YorBp4MYqF2BWNYjOuimxoL8Q2r
	9UsLZZYHAVxYTRhpw5LXB/q8h2dACKhruRjtcfeM5eyQc50aiL6abm6sJZE3CjxDQqLcAhYydz82k
	5Fc6yFhcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioIdE-00053D-N0; Mon, 06 Jan 2020 03:00:40 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioId7-00052H-T4
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 03:00:35 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 644158C70891016C964B;
 Mon,  6 Jan 2020 11:00:27 +0800 (CST)
Received: from [127.0.0.1] (10.173.221.196) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0;
 Mon, 6 Jan 2020 11:00:20 +0800
From: "liwei (GF)" <liwei391@huawei.com>
Subject: Re: [RFC PATCH] perf tools: cs-etm: fix endless record after being
 terminated
To: Leo Yan <leo.yan@linaro.org>
References: <20200102074144.10407-1-liwei391@huawei.com>
 <20200103082414.GB9814@leoy-ThinkPad-X240s>
Message-ID: <acc0afd9-5d0e-dcb8-d56a-ac5680049c8c@huawei.com>
Date: Mon, 6 Jan 2020 11:00:19 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200103082414.GB9814@leoy-ThinkPad-X240s>
Content-Type: multipart/mixed; boundary="------------529A4C9796225E3A20E1E87B"
X-Originating-IP: [10.173.221.196]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_190034_101671_1810A258 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, mathieu.poirier@linaro.org, suzuki.poulose@arm.com,
 alexander.shishkin@linux.intel.com, ilubashe@akamai.com,
 linux-kernel@vger.kernel.org, acme@kernel.org, peterz@infradead.org,
 mingo@redhat.com, huawei.libin@huawei.com, namhyung@kernel.org,
 jolsa@redhat.com, linux-arm-kernel@lists.infradead.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--------------529A4C9796225E3A20E1E87B
Content-Type: text/plain; charset="gbk"
Content-Transfer-Encoding: 8bit

Hi Leo,

Thanks for your test and sorry for missing the reproducing info.
The attachment is my test procedure, i can reproduce this issue
with it on kernel 5.5-rc4 definitely.

I have tested these patches on kernel 5.5-rc4, with intel-pt on Xeon
Gold 6140 (72 cores) and arm-spe on HiSilicon Hi1620 (128 cores).
But i can not test CoreSight temporarily, could you please test it
with the test procedure again?

P.s. Running the test procedure as a normal process is enough.

Thanks£¬
Wei

On 2020/1/3 16:24, Leo Yan wrote:

> 
> I took some time to test on Arm CoreSight, the perf program can be
> terminated by Ctrl+c with SIGINT signal on the mainline kernel.
> 
> And after capturing ftrace data with below log:
> 
> 5242      migration/2-19    [002] d..3  4648.383155: sched_migrate_task: comm=perf pid=1692 prio=120 orig_cpu=2 dest_cpu=0
> 5243      migration/2-19    [002] d..2  4648.383167: sched_switch: prev_comm=migration/2 prev_pid=19 prev_prio=0 prev_state=S ==> next_comm=swapper/2 next_pid=0 next_prio=120
> 5244           <idle>-0     [000] d..2  4648.383167: sched_switch: prev_comm=swapper/0 prev_pid=0 prev_prio=120 prev_state=R ==> next_comm=perf next_pid=1692 next_prio=120
> 5245             perf-1692  [000] d..2  4648.383193: sched_stat_runtime: comm=perf pid=1692 runtime=35420 [ns] vruntime=1636633943 [ns]
> 5246             perf-1692  [000] d..3  4648.383200: sched_waking: comm=migration/0 pid=11 prio=0 target_cpu=000
> 5247             perf-1692  [000] dN.4  4648.383203: sched_wakeup: comm=migration/0 pid=11 prio=0 target_cpu=000
> 5248             perf-1692  [000] dN.2  4648.383205: sched_stat_runtime: comm=perf pid=1692 runtime=9340 [ns] vruntime=1636643283 [ns]
> 5249             perf-1692  [000] d..2  4648.383208: sched_switch: prev_comm=perf prev_pid=1692 prev_prio=120 prev_state=R+ ==> next_comm=migration/0 next_pid=11 next_prio=0
> 5250      migration/0-11    [000] d..3  4648.383215: sched_migrate_task: comm=perf pid=1692 prio=120 orig_cpu=0 dest_cpu=1
> 5251       algorithm1-721   [001] dN.2  4648.383225: sched_stat_runtime: comm=algorithm1 pid=721 runtime=2906000 [ns] vruntime=3501282256244 [ns]
> 5252       algorithm1-721   [001] d..2  4648.383229: sched_switch: prev_comm=algorithm1 prev_pid=721 prev_prio=120 prev_state=R ==> next_comm=perf next_pid=1692 next_prio=120
> 5253      migration/0-11    [000] d..2  4648.383235: sched_switch: prev_comm=migration/0 prev_pid=11 prev_prio=0 prev_state=S ==> next_comm=swapper/0 next_pid=0 next_prio=120
> 5254       algorithm1-721   [001] d..4  4648.383241: <stack trace>
> 5255  => kprobe_breakpoint_handler
> 5256  => call_break_hook
> 5257  => brk_handler
> 5258  => do_debug_exception
> 5259  => el1_sync_handler
> 5260  => el1_sync
> 5261  => etm_event_stop
> 5262  => event_sched_out.isra.106
> 5263  => group_sched_out.part.108
> 5264  => ctx_sched_out
> 5265  => task_ctx_sched_out
> 5266  => __perf_event_task_sched_out
> 5267  => __schedule
> 5268  => schedule
> 5269  => do_notify_resume
> 5270  => work_pending
> 
> We can see after send SIGINT signal, the process 'perf' will be
> migrated from CPU2 to CPU0 (line 5242) and it will preempt process
> 'algorithm1' (line 5252); after the process 'algorithm1' is scheduled
> out, the function etm_event_stop() will be invoked to stop tracing.
> 
> If we connect with the code in cs_etm_read_finish(), it tries to call
> ioctl PERF_EVENT_IOC_ENABLE, but because the process 'algorithm1' is
> scheduled out, so the perf event should not be enabled afterwards.
> 
> I may miss something at here ... Could you confirm what's the type of
> attached process?  normal process or RT process?
> 
> Thanks,
> Leo
> 
> P.s. I tested IntelPT with 5.2-rc3 kernel, it also can be terminated
> properly.
> 
>>  	return -EINVAL;
>> -- 
>> 2.17.1
>>
> 
> .
> 


--------------529A4C9796225E3A20E1E87B
Content-Type: text/plain; charset="UTF-8"; name="perf_endless_record.c"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="perf_endless_record.c"

#define _GNU_SOURCE

#include <stdlib.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/sysinfo.h>
#include <unistd.h>
#include <sched.h>
#include <ctype.h>
#include <string.h>
#include <pthread.h>

int num = 0;
int test[65535];

int mess_rw(int data)
{
    int i;

    while (1) {
        for (i = 0; i < (sizeof(test) / sizeof(test[0])); i++) {
            if (test[i] != data)
                test[i] = data;
        }
    }
}

void *test_thread(void *arg)
{
    int cpu = *(int *)arg;
    cpu_set_t mask;

    CPU_ZERO(&mask);
    CPU_SET(cpu, &mask);
    if (!sched_setaffinity(0, sizeof(mask), &mask))
        printf("thread %d: running on cpu %d\n", cpu, cpu);
    else
        printf("thread %d: fail to set CPU affinity\n", cpu);

    mess_rw(cpu);

    return NULL;
}

int main(int argc, char *argv[])
{
    num = sysconf(_SC_NPROCESSORS_CONF);
    pthread_t thread[num];
    int id[num];
    int i;

    printf("PID %d on system with %d processor(s)\n", getpid(), num);

    for (i = 0; i < num; i++) {
        id[i] = i;
        pthread_create(&thread[i], NULL, test_thread, (void *)&id[i]);
    }

    for (i = 0; i < num; i++) {
        pthread_join(thread[i], NULL);
    }

    return 0;
}


--------------529A4C9796225E3A20E1E87B
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--------------529A4C9796225E3A20E1E87B--

