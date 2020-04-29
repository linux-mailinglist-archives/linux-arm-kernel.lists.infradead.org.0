Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D0C1BEC94
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 01:18:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mn/YNVIWI756OlTQV4YpkeSN6s0IbRNFZd69tO/PyDk=; b=X8avxHu6xL3Wql
	/uexb7ueQ4WbOzOw0Fcw6yn6uj5E06ZI7pWunRmyEXL6Y3J8gJTjAcOerYE61de5lskUWn5wTVGAO
	sOPkxsSYDnoCuARSFXOxEE+gB46YXw/Hmwvh7W7fFMadiWTBbTBrSpUXHJNc/Nzgc0VKaWpQZz3oz
	Y+7hzn0/87dbfeS2c3jZc1jVuS38C5zp0T257OnbtZkX8rD5YBUajrozS+YMdVsA7z4IaX15ICPmh
	aqt5sSnJ9SqwPlRl/J+DyrEO4np2fMih7KPJxAzZr2frRb+d30p0hXxuks+N6RDfXKWq2G5stChG4
	P2uH6E8xOO+rAMihjgbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTvyY-0003oH-Jm; Wed, 29 Apr 2020 23:18:46 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTvyM-0003mp-3S
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 23:18:36 +0000
Received: by mail-lf1-x141.google.com with SMTP id r17so3169310lff.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 16:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CbLlq66sQ9c2dpjM4PO9GavQ8mLZTTgTJBAsom1lrl4=;
 b=o8v4X9ARjoK8udY7bCronH4Z5nsYMjaLUGECMiOK6+ImTYIaP4L0QfuiqTJsQWGfyZ
 iVZaCX4dFBne8lLO9qw04RZnCmhRRCVP+q4HhEBFiDT1RtCx91VSkez1xEyc/Y7/vlPq
 7d1gacWSSSKG5H3oXWBD1xhcvLCeCfwkQtoMLjuYZXPuuwy/8U5SKbvL5oW7KbOLDozO
 sagHydZoXyUXwc91/CgRlnk2Tr7xq0d65/CmHUILhvoEWpOjBmUO1LfvUJKWnAdfLMjc
 ye3tHnkPlfnU/y3KDVT9NDEDLuYV+qwy6VSH1vNTijEhO+2p0005IvV4533VEWfFfkOy
 4BwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CbLlq66sQ9c2dpjM4PO9GavQ8mLZTTgTJBAsom1lrl4=;
 b=NV4SWytBHSqNkSMoJ/j7vnmHn1vY81pn3DkEhritJFHdzIYdOmomncxpkLWhfR9Dbh
 Fec2HU1tlnwOYfIaODizfK3B4m5OmCwwO1ysFs0nvZM1Wholq12Cwx5pZlunRN4faFee
 xfRMgF4bVjAvQ47WGV3SYIXxg8x1b/hy3DWasPFuHAFZqQ7O9cma3LjBueGgxu2Lkp8B
 FLxuxLJFx7LrRT2IkwKAVAJ0+Nd9gexbe/BthcA7aPjqyX6BxRhT76M/vC0TSYBfrUNh
 Uy2RWcLT3qZLBR0pGMta6CRT+eTqfS8xzMkus5vqgs2fpxa6jBGVsWMLEnEtjjqZPEoy
 RBZg==
X-Gm-Message-State: AGi0Pub0iI+loCAiLTI+Kn2Tbx3Aj/mE1+s6kVKAVm7qJ/Nu1BUdVXC3
 1FNqqEzZIOfBKEiu0UwFMvmY7RlMo82eIv6wr9hSzg==
X-Google-Smtp-Source: APiQypKsmAiIkZkAXJv3TNFdsoOqjHZqol0/KFmcRvdMfyq15JAnSuckNesRRNLYTgIi6bvQRGu8dTBYopRYlYR4oik=
X-Received: by 2002:a19:7909:: with SMTP id u9mr136944lfc.130.1588202309097;
 Wed, 29 Apr 2020 16:18:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200306042831.17827-1-elder@linaro.org>
In-Reply-To: <20200306042831.17827-1-elder@linaro.org>
From: Evan Green <evgreen@google.com>
Date: Wed, 29 Apr 2020 16:17:52 -0700
Message-ID: <CAE=gft6dezobVsdmKwa8qYJzS-2ZaTxG7Vp6MYK2ve_hawSagw@mail.gmail.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver (UPDATED)
To: Alex Elder <elder@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_161834_171670_A7759681 
X-CRM114-Status: GOOD (  34.50  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Susheel Yadav Yadagiri <syadagir@codeaurora.org>,
 Eric Caruso <ejcaruso@google.com>, Arnd Bergmann <arnd@arndb.de>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Dan Williams <dcbw@redhat.com>,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Siddharth Gupta <sidgup@codeaurora.org>, Andy Gross <agross@kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 Johannes Berg <johannes@sipsolutions.net>, linux-soc@vger.kernel.org,
 David Miller <davem@davemloft.net>,
 Chaitanya Pratapa <cpratapa@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 5, 2020 at 8:28 PM Alex Elder <elder@linaro.org> wrote:
>
> This series presents the driver for the Qualcomm IP Accelerator (IPA).
>
> This is version 2 of this updated series.  It includes the following
> small changes since the previous version:
>   - Now based on net-next instead of v5.6-rc
>   - Config option now named CONFIG_QCOM_IPA
>   - Some minor cleanup in the GSI code
>   - Small change to replenish logic
>   - No longer depends on remoteproc bug fixes
> What follows is the basically same explanation as was posted previously.
>
>                                         -Alex
>
> I have posted earlier versions of this code previously, but it has
> undergone quite a bit of development since the last time, so rather
> than calling it "version 3" I'm just treating it as a new series
> (indicating it's been updated in this message).  The fast/data path
> is the same as before.  But the driver now (nearly) supports a
> second platform, its transaction handling has been generalized
> and improved, and modem activities are now handled in a more
> unified way.
>
> This series is available (based on net-next in branch "ipa_updated-v2"
> in this git repository:
>   https://git.linaro.org/people/alex.elder/linux.git
>
> The branch depends on other one other small patch that I sent out
> for review earlier.
>   https://lore.kernel.org/lkml/20200306042302.17602-1-elder@linaro.org/
>

I realize this is all already in (yay!), but it took me a long time to
get around to fully reading this driver. I'll paste my notes here for
posterity or possible future patches. Overall the driver seemed well
documented and thoughtfully written. As someone who has seen the old
downstream IPA driver (though I didn't look long as my brain started
hurting), I greatly appreciate the work required by Alex to polish
this all up. So firstly, thanks Alex!

Onto the notes. There are a couple themes I noticed. The driver seems
occasionally to be unnecessarily layer-caked. I noticed "could be
inlined" as a common refrain in my feedback. There are also a couple
places with hand-rolled refcounting, atomic exchanges, and odd
mutexes. I haven't fully digested those to be able to know how to get
rid of them, but I'll point them out as something that "doesn't smell
quite right".

Acronyms (for my own benefit):
ee - execution environment
ep - endpoint
er - endpoint or route ID
rt - resource type
dcd - Dynamic clock division (request to GCC to turn you off)
bcr - Backwards compatibility register
comp - Core master port
holb - ???

ipa_main.c:
What is IPA_VALIDATION. Can this just be on always or removed?
otherwise it will likely bit rot.
I'd like to see this suspend_ref go away.
ipa_reg.c can be inlined
ipa_mem_init can be inlined.


IPA_NOTIFY:
Shouldn't CONFIG_IPA depend on IPA_NOTIFY?


ipa_data.h
Why are ipa_resource_src and ipa_resource_dst separate structures?
maybe the extern globals at the bottom should just be moved into ipa_main.c


ipa_endpoint.h
Add a note for enum ipa_endpoint_name indicating who is TXing and RXing


ipa_data-sc7180.c
Where is IPA_ENDPOINT_MODEM_LAN_TX definition?


ipa_clock.c
IPA_CORE_CLOCK_RATE - Should probably be specified in DT as a fixed
frequency rather than here in code.
Interconnect bandwidths - Are these a function of the core clock rate?
This may be fine for the initial version, but is there any way to
derive the bandwidth requirement?
ipa_interconnect_init_one - Probably best to just inline this
ipa_clock_get_additional - Seems sketchy, would like to remove this
Overall don't like the homebrew reference counting here. Would runtime
PM help you do this?


ipa_interrupt.h
I'd like to get rid of ipa_interrupt_add and ipa_interrupt_remove.
Seems like there's no need for these to be dynamically added, it's all
one driver.


ipa_interrupt.c
Why does ipa_interrupt_setup() need to dynamically allocate the
structure, can't we just embed it in struct ipa?
Without the kzalloc, ipa_interrupt_setup() and
ipa_interrupt_teardown() are simple enough they can probably be
inlined (at least teardown for sure).
Interrupt processing seems a little odd. What I would have expected is:
Hard ISR reads pending bits, and immediately writes all pending bits
to quiesce them. Save bitmask of pending bits, and send to the
threaded handler. Threaded handler then reads and clears pending bits
out, and acts on any.
Fixes interrupt storm in ipa_isr() if an unexpected interrupt comes in
but an expected interrupt is also pending.
Avoids multiple register writes (one for each bit) in ipa_interrupt_process()
Saves all the register reads in ipa_interrupt_process_all(). That
additional read in the loop seems like it shouldn't be there either
way.


ipa_mem.h
Is IPA_SHARED_MEM_SIZE supposed to be defined? It's mentioned in the comment.
Comment says the number of canaries is the same for all IPA versions,
but ipa_data-sdm845.c and ipa_data-sc7180.c seem to have different
canary counts for IPA_MEM_UC_INFO?
Should the number of canaries really be part of the chipset-specific
config info if it's never going to change?
Do the canary values eat into the previous region? Can we add a
warning to ensure we don't write canary values off the beginning of
the memory region?


ipa_mem.c
Maybe remove ipa_mem_teardown() if we're not planning to add anything
to it soon, or inline it in the header for now.
Does ipa_mem_zero_modem() erase canary values previously set up?


gsi.h
Why make gsi_evt_ring_state 0xf? Remove assignments and let enum do its thing.
enum gsi_ee_id - Probably worth commenting that this defines the
layout of the per-EE register regions, so rearranging this would
horribly break our access to hardware.


gsi_reg.h
What is gsi v2.0? Is that the same as IPA 4.0?
Why do the channel macros have things like CH_C and EE_N in them? Why
not just CH and EE? Oh, I also see CH_E, what's that?


gsi.c:
enum gsi_err_code: Where's 0x7?
gsi_channel_deprogram(): delete
gsi_channel_update(): I'm worried about this refcount thing, how does it work?
gsi_event_bitmap_init() can be inlined
gsi_evt_ring_setup() and gsi_evt_ring_teardown() can be removed
gsi_teardown(): inline
gsi_evt_ring_exit(): remove


ipa_gsi.h:
Comment for ipa_gsi_channel_tx_completed has wrong function name copypasta.


ipa_gsi.c:
This is an interesting mezzanine interface, it looks like it was
designed to keep GSI code from calling IPA code directly. Why is that?
Could these at least be inlined into the ipa_gsi.h?


gsi_trans.h:
Why is it important that struct gsi_trans be < 128 bytes?


gsi_trans.c:
gsi_tre_type - Should this be in a header?
TRE_FLAGS_ - Should these be in a header? Also, replace GENMASK(x,x)
with BIT(x). TRE_FLAGS_IEOB_FMASK is never used (which is fine, but
should it be?)
gsi_trans_tre_reserve() - Why atomic_try_cmpxchg? What's the
difference between that and atomic_cmpxchg?
gsi_tre_len_opcode() - If len is truncated to 16 bits, why is u32
passed in? Is len sometimes used as 32 bits?
gsi_trans_tre_fill() - If it doesn't do a 16-byte atomic write, is
this a problem? Could the controller see a half-baked TRE?


ipa_endpoint.c:
What is HOLB timer?


ipa_table.c:
ipa_table_valid() - This just runs all 3-bit possibilities. Could use
flags and a loop instead.
ipa_table_teardown() - Remove?


ipa_cmd.c:
ipa_cmd_tag_process_add() - What happened here? Is this just
functionality we're not using right now?


ipa_modem.c
ipa_start_xmit() - Could returning BUSY result in an infinite loop if
something goes wrong in the lower layers?
ipa_modem_start() - Shouldn't we print some errors if the state
variable has an unexpected value (ie not RUNNING)? In those cases we
are likely not in a good place.


ipa_qmi.c:
ipa_qmi_indication() could be inlined
init_modem_driver_req() use of static means this can never run
concurrently with itself, right? Also if the request gets stuck in
qmi_txn_wait() you're hosed.


ipa_qmi_msg.c
You could macro-ize the initialization of these elements, which would
make things way shorter, and probably easier to read. I'm imagining
for instance the first element in the file could be reduced to
IPA_QMI_ELEM(QMI_OPT_FLAG, 1, struct ipa_indication_register_req,
master_driver_init_complete_valid, 0x10)


ipa_smp2p.c:
s/Motex/Mutex/
Actually I don't get why the mutex is needed at all. It's certainly
not needed in ipa_smp2p_disable() (stores are already atomic), and
threaded irqs already have mutual exclusion. Or are you trying to make
sure ipa_smp2p_disable() doesn't return until
ipa_smp2p_modem_setup_ready_isr() has fully completed? If that's
really why, you should explain that's what it's doing and why it's
necessary.
Thinking more about it, why can't you just actually disable the irq?
That calls synchronize_irq, which will flush out any instances of the
irq running. Then no mutex necessary!
ipa_smp2p_irq_init(), and _exit() can be inlined.
I'd love to see clock_on and the weird reference counting go away. Is
that really necessary?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
