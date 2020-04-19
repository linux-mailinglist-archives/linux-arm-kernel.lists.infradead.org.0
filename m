Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDBFB1AFA54
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 14:59:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gGh3p4joKNZPBdMMYN1U8oA+6JYYYeaUMOoHIYXRSeM=; b=G2e16djogiyd6W
	vyWZKdEHkzgXod8RzNA4Gdv4eQXJtCE5+Yh0+UXTcArGAhuuonex2UI2YYie75NyCiWmLpANhraQA
	AUKNQDdNfE1k+3DUSKBqnWbGW9aa0PyuSD6rgl+6K9WOa+Ns7IovDMOvFavcgTq1VZw6aUPpU7olK
	d7xnuvwdZwST6tPgP0EuL+GVTyFnGsutudgZ31UPFSSdX3dMJcOny3J6U3+Vcp6BS+THmZQaGYfpp
	rfJE0hNDYxr+zuIbc72wcfUccSoGpk05UB8TEc/FtcvkkkIbbAaH9xEeULsvZPKQB0qHo48LS0CGz
	yWf/K8sXXiyXFxHHU45g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ9Xm-0005p1-0D; Sun, 19 Apr 2020 12:59:30 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ9Xb-0005o9-2u
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 12:59:21 +0000
Received: by mail-wm1-x32a.google.com with SMTP id g12so8088211wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 05:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rug-nl.20150623.gappssmtp.com; s=20150623;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=Y0d6C85M8m3mmPqaFLnTx1NHG0bsGXVu2qqb/ZrZwz0=;
 b=UYNjtGOK4dgq3P/y+5Sj86RnHjNnRxjfmjh8Kk+aUCx54QJC605unzqHlo42u2VkOi
 Crw4B5BPccaS5QnQ6wyqf56oR6DW780E7dt/NGSc3dhmf6yDPCVEILZFe+MVaIemke0z
 qAvzaQLCaaHxTFhImgUpaTNlBQ1QwlAHRLFyMCuOUryQDdlokM+5Yv8Rpb5SgkMIze6D
 kMM1gdtp/Wt8SYhHuDo0lIFjvohhSmqT8GfPxb8rXAas8n0UvbBFNxCXYMXo++Wa7l8h
 U/mDbYsnZv/2e7tRgL/DotH14jxt9NYFBqhtxoAwmEYirepflW5LZGXZUMcKBv2gEOyJ
 9Olg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=Y0d6C85M8m3mmPqaFLnTx1NHG0bsGXVu2qqb/ZrZwz0=;
 b=Jmwd7979upPIc4wcjYo06HoKJGzjQn4LZll9EmCMRuSrKkbrKmXcBw9EQiF1NZQIOi
 fiCq3RFVz1CC1B0umwhRiBWc0hiaU+rUvscSMhGlvGRFgOPu1IHqaSJB+LwrgkWfXocs
 WopXTjLaqNJYdpxinreTQn+9P1w7TU0YflyoX4/NOuiCFaWBJSxGHNkBdgQz+gGufR7/
 qjPXqS4UbYJLt6hSdQwluOsvqRACczeU4d4LcYdgUNpQtIQGbstTxWbCNv+v9vPQrXRr
 nt0krP7UsOApURHHSd2CyCoiXNlCKiAUt92FeaCvVZmgW3rzD/phUlBJ+wghZgBjLjMu
 l3kQ==
X-Gm-Message-State: AGi0PuYF9x3rmLIy2gXF5nCVGs+0BcXNMtZ7W7GmOjwMCaWEXjwI1bMF
 CtwHm7zoJD6wEEr2jVS9E4r795Rv2LeNIQ==
X-Google-Smtp-Source: APiQypJMQNFk4GM/K/Lj2dKSFYHqoMO+blmk8hetJo2yl8DlydKz5DEpgvYBhKr6kM9xjhvzHOM55A==
X-Received: by 2002:a1c:c345:: with SMTP id t66mr13453558wmf.189.1587301157050; 
 Sun, 19 Apr 2020 05:59:17 -0700 (PDT)
Received: from ?IPv6:2001:1c01:420a:8c00:515b:87b7:5264:e56f?
 (2001-1c01-420a-8c00-515b-87b7-5264-e56f.cable.dynamic.v6.ziggo.nl.
 [2001:1c01:420a:8c00:515b:87b7:5264:e56f])
 by smtp.gmail.com with ESMTPSA id q184sm3394245wma.25.2020.04.19.05.59.16
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 19 Apr 2020 05:59:16 -0700 (PDT)
To: linux-arm-kernel@lists.infradead.org
From: "s.achterop@rug.nl" <s.achterop@rug.nl>
Subject: Enable_fiq for ARM timer on rpi zero?
Message-ID: <c92cbd84-6ded-d7cf-dc01-8f71fc3f6092@rug.nl>
Date: Sun, 19 Apr 2020 14:59:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_055919_196801_107BA883 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

   Hello List,

I'm having trouble with using FIQ interrupts with the ARM timer on raspberypi zero, (BCM2835 chip).
The main problem is that I don't know which argument to use for the enable_fiq function.
Where can I find this information?

As far as I can see the ARM timer is not used in a regular kernel, so I assume that if I start the timer myself
and set the fiq to that timer it should work.
And, that can be done with either the enable_fiq(x) or directly writing 0xC0 to the FIQ control register.
Am I wrong here?

I created a simplified version of my driver, not much more than the minimal driver plus the fiq stuff.
In the init function I added a bit of code to monitor what happens after enable_fig is called.
It shows the working of the timer; the FIQ is not called so it seems.
The code can be found in
    https://github.com/SietseAchterop/Batradio/blob/master/batradio_module/fiqtest_2.c

Please find below the complete module-init function and the handler assember code.
Apart from a pure guess (I have tried several values) of the argument of enable_fiq() I really can't find anything wrong with it.

In drivers/irqchip/irq-bcm2835.c I found code about integrating the fiq handling together with the irq code,
But it still is unclear which value I need to enable_fiq.

   Thanks in advance,
      Sietse

====== init_bat
int init_bat(void)
{
   int ret;
   struct pt_regs regs;

   irqtimer = (uint32_t *) ioremap(IRQTIMER_BASE, IRQTIMER_SIZE);
   if (irqtimer == NULL) {
     printk("ioremap: irqtimer error!\n");
     return -ENOMEM;
   }

   // directly set ARM timer registers
   TIMCNTR = 0x0000000;   // stop timer
   TIMLOAD = 100000-1;    // load value
   TIMCINT = 0;           // clear interrupt

   ret = claim_fiq(&bat_fh);
   if (ret) {
     printk("batradio: claim_fiq failed.\n");
     return ret;
   }

   set_fiq_handler(&batradio_handler, &batradio_handler_end - &batradio_handler);

   regs.ARM_r8  = (long)0;
   regs.ARM_r9  = (long)irqtimer;
   regs.ARM_r10 = (long)0;
   set_fiq_regs(&regs);

   TIMCNTR = 0x000000A2;   // start timer with interrupt, 23 bit counter
   //IRQFIQ = 0xC0;         // timer interrupt to fiq directly via register
   enable_fiq(0);

   ret = 10;
   while (ret) {
     get_fiq_regs(&regs);
     printk("timer %d, raw int pending %x, count %ld\n", TIMVAL, RAWINT, regs.ARM_r10);
     msleep(1);
     ret--;
   }

   printk(KERN_INFO "  Installed batradio module... \n");
   return 0;
}


======  batradio fiq handler (clear interrupt and increment r10)
	.text
	.global batradio_handler
	.global batradio_handler_end

batradio_handler:
	str	r8, [r9, #0x40C]	// TIMCINT = 0
	add	r10, r10, #1
	subs	pc, lr, #4
	.align
batradio_handler_end:

======   snippet from /var/log/kern.log

Apr 19 10:19:55 raspberrypi kernel: [  578.943318] timer 99609, raw int pending 0, count 0
Apr 19 10:19:55 raspberrypi kernel: [  578.967638] timer 87461, raw int pending 0, count 0
Apr 19 10:19:55 raspberrypi kernel: [  578.996511] timer 73024, raw int pending 0, count 0
Apr 19 10:19:55 raspberrypi kernel: [  579.026264] timer 49371, raw int pending 0, count 0
Apr 19 10:19:55 raspberrypi kernel: [  579.056274] timer 25365, raw int pending 0, count 0
Apr 19 10:19:55 raspberrypi kernel: [  579.086249] timer 1385, raw int pending 0, count 0
Apr 19 10:19:55 raspberrypi kernel: [  579.116236] timer 77396, raw int pending 1, count 0
Apr 19 10:19:55 raspberrypi kernel: [  579.146262] timer 53373, raw int pending 1, count 0
Apr 19 10:19:56 raspberrypi kernel: [  579.176294] timer 29350, raw int pending 1, count 0
Apr 19 10:19:56 raspberrypi kernel: [  579.206174] timer 5444, raw int pending 1, count 0
Apr 19 10:19:56 raspberrypi kernel: [  579.236151]   Installed batradio module...



==== after a modprobe/rmmod cycle I also get the following. Probably due to the wrong argument to enable_fiq.

Apr 19 10:19:55 raspberrypi kernel: [  578.942556] ------------[ cut here ]------------
Apr 19 10:19:55 raspberrypi kernel: [  578.942624] WARNING: CPU: 0 PID: 1520 at kernel/irq/manage.c:576 __enable_irq+0x58/0x7c
Apr 19 10:19:55 raspberrypi kernel: [  578.942632] Unbalanced enable for IRQ 72
        .....
Apr 19 10:19:55 raspberrypi kernel: [  578.942797] CPU: 0 PID: 1520 Comm: modprobe Tainted: G        WC O      4.19.108+ #1
Apr 19 10:19:55 raspberrypi kernel: [  578.942804] Hardware name: BCM2835
Apr 19 10:19:55 raspberrypi kernel: [  578.942851] [<c00184f8>] (unwind_backtrace) from [<c0015064>] (show_stack+0x20/0x24)
Apr 19 10:19:55 raspberrypi kernel: [  578.942879] [<c0015064>] (show_stack) from [<c0753394>] (dump_stack+0x20/0x28)
Apr 19 10:19:55 raspberrypi kernel: [  578.942918] [<c0753394>] (dump_stack) from [<c0025b58>] (__warn.part.3+0xb8/0xe0)
Apr 19 10:19:55 raspberrypi kernel: [  578.942943] [<c0025b58>] (__warn.part.3) from [<c0025bec>] (warn_slowpath_fmt+0x6c/0x90)
Apr 19 10:19:55 raspberrypi kernel: [  578.942970] [<c0025bec>] (warn_slowpath_fmt) from [<c00722dc>] (__enable_irq+0x58/0x7c)
Apr 19 10:19:55 raspberrypi kernel: [  578.942993] [<c00722dc>] (__enable_irq) from [<c0072350>] (enable_irq+0x50/0xa4)
Apr 19 10:19:55 raspberrypi kernel: [  578.943015] [<c0072350>] (enable_irq) from [<c0016168>] (enable_fiq+0x38/0x40)
Apr 19 10:19:55 raspberrypi kernel: [  578.943059] [<c0016168>] (enable_fiq) from [<bf6610b4>] (init_module+0xb4/0x164 [batradio])
Apr 19 10:19:55 raspberrypi kernel: [  578.943125] [<bf6610b4>] (init_module [batradio]) from [<c000ae8c>] (do_one_initcall+0x4c/0x234)
Apr 19 10:19:55 raspberrypi kernel: [  578.943163] [<c000ae8c>] (do_one_initcall) from [<c00a7898>] (do_init_module+0x6c/0x1f8)
Apr 19 10:19:55 raspberrypi kernel: [  578.943187] [<c00a7898>] (do_init_module) from [<c00a9cdc>] (load_module+0x21ec/0x24cc)
Apr 19 10:19:55 raspberrypi kernel: [  578.943210] [<c00a9cdc>] (load_module) from [<c00aa1f8>] (sys_finit_module+0xcc/0xec)
Apr 19 10:19:55 raspberrypi kernel: [  578.943234] [<c00aa1f8>] (sys_finit_module) from [<c0009000>] (ret_fast_syscall+0x0/0x28)
        ....
Apr 19 10:19:55 raspberrypi kernel: [  578.943302] ---[ end trace 8bc89e3729ce1265 ]---


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
