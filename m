Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E69D01785D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 23:44:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zPwlgjQlszld2CP9LmarpVUDUxZ2rD3EKkvjKEPnWHc=; b=KbLhKVgTWjyDvE
	Bk75c7JzC8cO44Yg1lVKwXy1unLGvZdFxviBrcjmrFmsRPlTSQgLsjdqb65TMTY9g4uXCEuKx4+FZ
	LagQS0da7pmJQEgJOhu7iAf3DKAP9DJ1Ei+USOtvvhodfRZdaZfx2msGAyUlVOpAoyVBWRG2T4Y0A
	sqSOepora0xX4lyvr2ZaiwQt2zkyVfr0DL+fq7/mioi5ERKfRHbt8NA3LPRUtd7XI88qcjVYrmZIx
	v3DbcZPp+5YsbeDltfechE6OEKdYtk/EOQUieOvsdkIsGGoNBuUSytc5T0x+xKZpIyH1H2T8kq3QB
	70NN/Cjfltd35x+pWNdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9GGW-0006FE-Qr; Tue, 03 Mar 2020 22:43:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9GGA-000655-53
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 22:43:31 +0000
Received: from sol.localdomain (c-107-3-166-239.hsd1.ca.comcast.net
 [107.3.166.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9F5FA2072A;
 Tue,  3 Mar 2020 22:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583275409;
 bh=KFjLsAjNMx93cGKtEJs8LhZSNNLzN16FDXVUS6jWAAE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZhVCtl27YLCVh26NOG29luP24Nwr1QwpbSdL/Au+gj/hlBRXXRszO62kMZZurPkJe
 K1BrNOGlz20BT+GWY8ROBP0fNu/hrykd4dM4TF3Tcq6JEnIKx1efyaFDo2k3BYq+RR
 tpliTFwHGaFHXqniA2LtPiF4MSV/eFCa2PLapnaI=
Date: Tue, 3 Mar 2020 14:43:27 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: Daniel Jordan <daniel.m.jordan@oracle.com>
Subject: Re: WARNING: at kernel/workqueue.c:1473 __queue_work+0x3b8/0x3d0
Message-ID: <20200303224327.GA89804@sol.localdomain>
References: <20200217204803.GA13479@Red>
 <20200218163504.y5ofvaejleuf5tbh@ca-dmjordan1.us.oracle.com>
 <20200220090350.GA19858@Red>
 <20200221174223.r3y6tugavp3k5jdl@ca-dmjordan1.us.oracle.com>
 <20200228123311.GE3275@willie-the-truck>
 <20200228153331.uimy62rat2tdxxod@ca-dmjordan1.us.oracle.com>
 <20200301175351.GA11684@Red>
 <20200302172510.fspofleipqjcdxak@ca-dmjordan1.us.oracle.com>
 <e7c92da2-42c0-a97d-7427-6fdc769b41b9@arm.com>
 <20200303213017.tanczhqd3nhpeeak@ca-dmjordan1.us.oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303213017.tanczhqd3nhpeeak@ca-dmjordan1.us.oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_144330_267261_A1BE62DC 
X-CRM114-Status: GOOD (  27.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, Will Deacon <will@kernel.org>, jiangshanlai@gmail.com,
 linux-kernel@vger.kernel.org, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, tj@kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 03, 2020 at 04:30:17PM -0500, Daniel Jordan wrote:
> On Mon, Mar 02, 2020 at 06:00:10PM +0000, Robin Murphy wrote:
> > On 02/03/2020 5:25 pm, Daniel Jordan wrote:
> > Something smelled familiar about this discussion, and sure enough that merge
> > contains c4741b230597 ("crypto: run initcalls for generic implementations
> > earlier"), which has raised its head before[1].
> 
> Yep, that looks suspicious.
> 
> The bisect didn't point to that specific commit, even though my version of git
> tries commits in the merge.  I'm probably missing something.
> 
> > > Does this fix it?  I can't verify but figure it's worth trying the simplest
> > > explanation first, which is that the work isn't initialized by the time it's
> > > queued.
> > 
> > The relative initcall levels would appear to explain the symptom - I guess
> > the question is whether this represents a bug in a particular test/algorithm
> > (as with the unaligned accesses) or a fundamental problem in the
> > infrastructure now being able to poke the module loader too early.
> 
> I'm not familiar with the crypto code.  Could it be that the commit moved some
> request_module() calls before modules_wq_init()?
> 
> And, is it "too early" or just "earlier"?  When is it too early for modprobe?
> 
> Barring other ideas, Corentin, would you be willing to boot with
> 
>     trace_event=initcall:*,module:* trace_options=stacktrace
> 
> and
> 
> diff --git a/kernel/module.c b/kernel/module.c
> index 33569a01d6e1..393be6979a27 100644
> --- a/kernel/module.c
> +++ b/kernel/module.c
> @@ -3604,8 +3604,11 @@ static noinline int do_init_module(struct module *mod)
>  	 * be cleaned up needs to sync with the queued work - ie
>  	 * rcu_barrier()
>  	 */
> -	if (llist_add(&freeinit->node, &init_free_list))
> +	if (llist_add(&freeinit->node, &init_free_list)) {
> +		pr_warn("%s: schedule_work for mod=%s\n", __func__, mod->name);
> +		dump_stack();
>  		schedule_work(&init_free_wq);
> +	}
>  
>  	mutex_unlock(&module_mutex);
>  	wake_up_all(&module_wq);
> 
> but not my earlier fix and share the dmesg and ftrace output to see if the
> theory holds?
> 
> Also, could you attach your config?  Curious now what your crypto options look
> like after fiddling with some of them today while trying and failing to see
> this on x86.
> 

Probably the request_module() is coming from the registration-time crypto
self-tests allocating the generic implementation of algorithm when an
architecture-specific implementation is registered.  This occurs when
CONFIG_CRYPTO_MANAGER_EXTRA_TESTS=y on Linux v5.2 and later.

If this is causing problems we could do:

diff --git a/crypto/testmgr.c b/crypto/testmgr.c
index ccb3d60729fc..d89791700b88 100644
--- a/crypto/testmgr.c
+++ b/crypto/testmgr.c
@@ -1667,7 +1667,7 @@ static int test_hash_vs_generic_impl(const char *driver,
 	if (strcmp(generic_driver, driver) == 0) /* Already the generic impl? */
 		return 0;
 
-	generic_tfm = crypto_alloc_shash(generic_driver, 0, 0);
+	generic_tfm = crypto_alloc_shash(generic_driver, 0, CRYPTO_NOLOAD);
 	if (IS_ERR(generic_tfm)) {
 		err = PTR_ERR(generic_tfm);
 		if (err == -ENOENT) {
@@ -2389,7 +2389,7 @@ static int test_aead_vs_generic_impl(struct aead_extra_tests_ctx *ctx)
 	if (strcmp(generic_driver, driver) == 0) /* Already the generic impl? */
 		return 0;
 
-	generic_tfm = crypto_alloc_aead(generic_driver, 0, 0);
+	generic_tfm = crypto_alloc_aead(generic_driver, 0, CRYPTO_NOLOAD);
 	if (IS_ERR(generic_tfm)) {
 		err = PTR_ERR(generic_tfm);
 		if (err == -ENOENT) {
@@ -2993,7 +2993,7 @@ static int test_skcipher_vs_generic_impl(const char *driver,
 	if (strcmp(generic_driver, driver) == 0) /* Already the generic impl? */
 		return 0;
 
-	generic_tfm = crypto_alloc_skcipher(generic_driver, 0, 0);
+	generic_tfm = crypto_alloc_skcipher(generic_driver, 0, CRYPTO_NOLOAD);
 	if (IS_ERR(generic_tfm)) {
 		err = PTR_ERR(generic_tfm);
 		if (err == -ENOENT) {


... but that's not ideal, since it would mean that if someone builds all crypto
algorithms as modules, then the comparison tests could be unnecessarily skipped.

But it is really always wrong to be calling request_module() from other
module_init() functions?  The commit that added 'init_free_wq' was also
introduced in v5.2; maybe that's the problem here?

	commit 1a7b7d9220819afe79d1ec5d759fe4349bd2453e
	Author: Rick Edgecombe <rick.p.edgecombe@intel.com>
	Date:   Thu Apr 25 17:11:37 2019 -0700

	    modules: Use vmalloc special flag

- Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
