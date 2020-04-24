Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF8A1B77B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 15:59:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SFgXi/dClnfKXj6Rch/e2ZYJmIWEh0N8gukc7tavoTA=; b=JMa0Z9/XKp/ajd
	5polpPGZA2ddMgrNFy5kH7uPBIyJwPS0I328wERPzTxMN+Iiay226km1MNoKvDrUlXIi2i9hKERCv
	xa0ve2256DY3hQkFpNRUb07hfleKDyodFb3aAYChhdqm+m7VIUCNOTIXkrAc4w7YAA7SQkktv32xg
	THH1K1J7IV1tedxO32505D/CS25hy1H/AUoWk+AOl0HKB8LsI/lDbFEGBpfEBM7Yjjl0lale1/3Nb
	+SfJXHk4HZ3WfdeVF7AMs+b0wasVzlmAQQOZdiAIHnt3qfNClDykQBW0M8OX+/DAymEhdiIU/fOvZ
	+rcLmPpFciZmm0m9SYPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRyr6-0007GO-S9; Fri, 24 Apr 2020 13:59:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRyqO-0006mz-FY
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 13:58:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9607D1063;
 Fri, 24 Apr 2020 06:58:15 -0700 (PDT)
Received: from e113632-lin.cambridge.arm.com (e113632-lin.cambridge.arm.com
 [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 978053F68F;
 Fri, 24 Apr 2020 06:58:14 -0700 (PDT)
From: Valentin Schneider <valentin.schneider@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] firmware/psci: Make PSCI checker use play_idle()
Date: Fri, 24 Apr 2020 14:56:57 +0100
Message-Id: <20200424135657.32519-3-valentin.schneider@arm.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200424135657.32519-1-valentin.schneider@arm.com>
References: <20200424135657.32519-1-valentin.schneider@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_065816_604402_32535ACE 
X-CRM114-Status: GOOD (  24.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To test if we can reach all idle states, the checker implements a
minimalist open-coded version of do_idle(). While it gets the job done,
it's not the nicest way to go about it.

What we can do instead is to nudge cpuidle to go for the idle state we want
with cpuidle_use_deepest_state(), go idle via play_idle(), and check the
cpuidle usage stats to see which idle state we entered.

We don't directly get the state.enter() return value anymore, but if we
never enter a given idle state throughout the entire test, then that
should be a good indicator that something is off.

Suggested-by: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Valentin Schneider <valentin.schneider@arm.com>
---
 drivers/firmware/psci/psci_checker.c | 131 +++++++--------------------
 1 file changed, 32 insertions(+), 99 deletions(-)

diff --git a/drivers/firmware/psci/psci_checker.c b/drivers/firmware/psci/psci_checker.c
index fa7bb1e8a461..722df252af28 100644
--- a/drivers/firmware/psci/psci_checker.c
+++ b/drivers/firmware/psci/psci_checker.c
@@ -226,56 +226,15 @@ static int hotplug_tests(void)
 	return err;
 }
 
-static void dummy_callback(struct timer_list *unused) {}
-
-static int suspend_cpu(struct cpuidle_device *dev,
-		       struct cpuidle_driver *drv, int index)
-{
-	struct cpuidle_state *state = &drv->states[index];
-	bool broadcast = state->flags & CPUIDLE_FLAG_TIMER_STOP;
-	int ret;
-
-	arch_cpu_idle_enter();
-
-	if (broadcast) {
-		/*
-		 * The local timer will be shut down, we need to enter tick
-		 * broadcast.
-		 */
-		ret = tick_broadcast_enter();
-		if (ret) {
-			/*
-			 * In the absence of hardware broadcast mechanism,
-			 * this CPU might be used to broadcast wakeups, which
-			 * may be why entering tick broadcast has failed.
-			 * There is little the kernel can do to work around
-			 * that, so enter WFI instead (idle state 0).
-			 */
-			cpu_do_idle();
-			ret = 0;
-			goto out_arch_exit;
-		}
-	}
-
-	ret = state->enter(dev, drv, index);
-
-	if (broadcast)
-		tick_broadcast_exit();
-
-out_arch_exit:
-	arch_cpu_idle_exit();
-
-	return ret;
-}
-
-static int suspend_test_thread(void *arg)
+static int suspend_test_thread(void *__unused)
 {
-	int cpu = (long)arg;
-	int i, nb_suspend = 0, nb_shallow_sleep = 0, nb_err = 0;
+	DECLARE_BITMAP(states_reached, CPUIDLE_STATE_MAX);
 	struct cpuidle_device *dev;
 	struct cpuidle_driver *drv;
-	/* No need for an actual callback, we just want to wake up the CPU. */
-	struct timer_list wakeup_timer;
+	int cpu = smp_processor_id();
+	int i, nr_states;
+	int nr_shallows = 0;
+	bool pass;
 
 	/* Wait for the main thread to give the start signal. */
 	wait_for_completion(&suspend_threads_started);
@@ -286,11 +245,12 @@ static int suspend_test_thread(void *arg)
 
 	dev = this_cpu_read(cpuidle_devices);
 	drv = cpuidle_get_cpu_driver(dev);
+	nr_states = drv->state_count;
+	bitmap_zero(states_reached, CPUIDLE_STATE_MAX);
 
 	pr_info("CPU %d entering suspend cycles, states 1 through %d\n",
 		cpu, drv->state_count - 1);
 
-	timer_setup_on_stack(&wakeup_timer, dummy_callback, 0);
 	for (i = 0; i < NUM_SUSPEND_CYCLE; ++i) {
 		int index;
 		/*
@@ -298,62 +258,45 @@ static int suspend_test_thread(void *arg)
 		 * doesn't use PSCI).
 		 */
 		for (index = 1; index < drv->state_count; ++index) {
-			int ret;
 			struct cpuidle_state *state = &drv->states[index];
+			unsigned long long prev, next;
 
+			prev = READ_ONCE(dev->states_usage[index].usage);
 			/*
-			 * Set the timer to wake this CPU up in some time (which
-			 * should be largely sufficient for entering suspend).
-			 * If the local tick is disabled when entering suspend,
-			 * suspend_cpu() takes care of switching to a broadcast
-			 * tick, so the timer will still wake us up.
+			 * This will attempt to go into the deepest idle state
+			 * possible. By specifying the exit latency, we prevent
+			 * higher idle states from being picked, so we should
+			 * end up in the one idle state we want. This may cause
+			 * issues if there are several idle states with
+			 * identical exit latency, but who does that?
 			 */
-			mod_timer(&wakeup_timer, jiffies +
-				  usecs_to_jiffies(state->target_residency));
-
-			/* IRQs must be disabled during suspend operations. */
-			local_irq_disable();
+			play_idle_precise(state->target_residency_ns,
+					  state->exit_latency_ns);
 
-			ret = suspend_cpu(dev, drv, index);
+			next = READ_ONCE(dev->states_usage[index].usage);
 
-			/*
-			 * We have woken up. Re-enable IRQs to handle any
-			 * pending interrupt, do not wait until the end of the
-			 * loop.
-			 */
-			local_irq_enable();
-
-			if (ret == index) {
-				++nb_suspend;
-			} else if (ret >= 0) {
-				/* We did not enter the expected state. */
-				++nb_shallow_sleep;
-			} else {
-				pr_err("Failed to suspend CPU %d: error %d "
-				       "(requested state %d, cycle %d)\n",
-				       cpu, ret, index, i);
-				++nb_err;
-			}
+			if (prev != next)
+				bitmap_set(states_reached, index, 1);
+			else
+				nr_shallows++;
 		}
 	}
 
-	/*
-	 * Disable the timer to make sure that the timer will not trigger
-	 * later.
-	 */
-	del_timer(&wakeup_timer);
-	destroy_timer_on_stack(&wakeup_timer);
+	/* Assert we reached each state at least once */
+	pass = bitmap_weight(states_reached, CPUIDLE_STATE_MAX) == nr_states - 1;
 
 	if (atomic_dec_return_relaxed(&nb_active_threads) == 0)
 		complete(&suspend_threads_done);
 
+	pr_info("CPU %d suspend results: reached %d states out of %d (%d/%d misses)\n",
+		cpu, bitmap_weight(states_reached, CPUIDLE_STATE_MAX),
+		nr_states - 1, nr_shallows,
+		(nr_states - 1) * NUM_SUSPEND_CYCLE);
+
 	while (!kthread_should_stop())
 		schedule_timeout_interruptible(MAX_SCHEDULE_TIMEOUT);
 
-	pr_info("CPU %d suspend test results: success %d, shallow states %d, errors %d\n",
-		cpu, nb_suspend, nb_shallow_sleep, nb_err);
-
-	return nb_err;
+	return !pass;
 }
 
 static int suspend_tests(void)
@@ -367,15 +310,6 @@ static int suspend_tests(void)
 	if (!threads)
 		return -ENOMEM;
 
-	/*
-	 * Stop cpuidle to prevent the idle tasks from entering a deep sleep
-	 * mode, as it might interfere with the suspend threads on other CPUs.
-	 * This does not prevent the suspend threads from using cpuidle (only
-	 * the idle tasks check this status). Take the idle lock so that
-	 * the cpuidle driver and device look-up can be carried out safely.
-	 */
-	cpuidle_pause_and_lock();
-
 	for_each_online_cpu(cpu) {
 		struct task_struct *thread;
 		/* Check that cpuidle is available on that CPU. */
@@ -389,7 +323,7 @@ static int suspend_tests(void)
 		}
 
 		thread = kthread_create_on_node(suspend_test_thread,
-						(void *)(long)cpu, cpu_to_node(cpu),
+						NULL, cpu_to_node(cpu),
 						"psci_suspend_test/%d", cpu);
 		if (IS_ERR(thread)) {
 			pr_err("Failed to create kthread on CPU %d\n", cpu);
@@ -421,7 +355,6 @@ static int suspend_tests(void)
 	for (i = 0; i < nb_threads; ++i)
 		err += kthread_stop(threads[i]);
 out:
-	cpuidle_resume_and_unlock();
 	kfree(threads);
 	return err;
 }
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
