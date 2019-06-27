Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 937D857B9A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 07:39:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EJ6GuwQLD2FuPdtGX2k0MU7Ji1sw0oUyCT61yeZPqVo=; b=bztJ84lIBtxNTH
	a9Rw8r9L3Z9vgnuaqIwUTqtFEX2Og/N4mFcBvglUBXRq8KGnIbsjRnHiFSZnNcuSqkZxCa2/7il2Y
	z+iTFOhDZYJ2PKW9kaaL5QhAheuzjFYWEoZh8OtA/iCyMlrWAq74Gdvt9bvYF29DZYv/ueXtjqgnb
	/ALVA0IhnLpTDctax5QtnFbIDGty+KrdL5AoYv5l9YRRZF8T69KxymexLLYlArE2Qby3OCjcxBM6d
	kgrGbKgKBLUhY84lUH3uzzlCANolEsCkQGld387mIR+/EYXO1hOhKoWtaJUfineXfVYrr3SyXKgHX
	yf20JkUbAS4swV8I8DnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgN7j-0001Ku-9x; Thu, 27 Jun 2019 05:39:07 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMrx-00013R-Ka
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 05:22:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
 Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ne57qfOBbrpWTmSwKmjlTjKmsCo+Sn2qKc5QwP4b3qo=; b=wP9/yCZHIet6WH+PC2fyNXBMs
 P+H4Lu0SUF2aPQcs6yoslqsHWJPC2ufkFkd0ABPEmnbqUtaNZAFI82eaYLlCG1E+rqh/05oIw//H4
 HZWS8aBLR28qtGag4Gvh15ymK3HU1gTswg3xCAQrdN2+P8N1Et4t38TbEiH+xIoaOAO8blBb3/Rt4
 HG0VsxXvHKNVenH6ScK2aBBBqA1Dc5PAWJmxHI7ZoRx+Ghd1zMEEMX4EMAjbvFt5ud9+WJY2Rsewn
 dWwCqSXQTzUYC21xQiqhqCRZCFqrbL85FVcEM5br2JDctHIeKzxsdsXwV2IXWZ2P6jQHVzaqzaMXT
 MCPC3Tm3A==;
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgIMA-0002Ln-Tx
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 00:33:44 +0000
Received: by mail-io1-xd44.google.com with SMTP id u19so811016ior.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 17:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=ne57qfOBbrpWTmSwKmjlTjKmsCo+Sn2qKc5QwP4b3qo=;
 b=MH3wkoDXHfXF5fF0q+4ozL7+zgvn5SeiKtLiHYzCNIcqFHXPkPAwLMDAdDzk2aiIwQ
 J78PjhZZ31NuKv8zy1/s8y3MRPBSFAVisSCw3pC/YBe5ea4C6Y+uFm5wHpal8nsxZLgB
 17lsiKG0OIZo1/fcOW8X2bMD/PSdyDvCVff3iu2G8wmtMH1QHqrOcCB6eOgDt4VuNjyk
 Poo9nGwiL6andopg9rnVNY+S336HW1WgpryVcFd4HvLr9UhpPKVIrzsbJAzaKITb3fvh
 sahpopsxSkGUr9VegYM/UOtFcnxFerQwnrKs330QIqOEtyCvWxY78rUw69KxygSiqpv1
 hjdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=ne57qfOBbrpWTmSwKmjlTjKmsCo+Sn2qKc5QwP4b3qo=;
 b=MQ7S/RJymq+Dg5mwD2+6zpOcYM/qDNAB9yXVcmty+6yq8cqvZcwrfp+OlBLBhvcK8a
 903pZsIijXINW9LxAOr70pCpl/UAQmGAK0wttnTyLFKjz/FWdImnY7nC/fpVzNyHgt6k
 kJ0mAGeoODSGDdwu+2I771gaa4y5zVnOgOeyB9HgitKfwvsD97FSyH2u5tqbKXJIbPBq
 q21U+1ecrZoAFudPHogd2y3edkcNPIJnzTqc/SnDIqGEk1/hMoGsfQK10rcKdl1E8t9i
 Mt/7IWuLxJsE0eH5bTnWSIi9VF/G40hrZdxYbN/PgAhVwc8zLoJSchqSxc3vzkwztttA
 4BLg==
X-Gm-Message-State: APjAAAWmVyVDbZBLCnaf/1llUfnTTNyZ+vzR/gvjsmLst/HjM17Mupj/
 JRblDzvu3LD7CQK1gR/jc9Jyag==
X-Google-Smtp-Source: APXvYqzkfD/79362o4UBWtnH1yN59+5ocrB6dWn1PQrF9lxmChizX5AwqLnfXA+vMES0ciXEXr5ebA==
X-Received: by 2002:a6b:3c0a:: with SMTP id k10mr1187601iob.271.1561595498768; 
 Wed, 26 Jun 2019 17:31:38 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 n26sm410757ioc.74.2019.06.26.17.31.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 26 Jun 2019 17:31:38 -0700 (PDT)
Date: Wed, 26 Jun 2019 17:31:37 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Sudeep Holla <sudeep.holla@arm.com>, Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v7 1/7] Documentation: DT: arm: add support for sockets
 defining package boundaries
In-Reply-To: <20190617185920.29581-2-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1906261724000.23534@viisi.sifive.com>
References: <20190617185920.29581-1-atish.patra@wdc.com>
 <20190617185920.29581-2-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_013342_988249_C204480D 
X-CRM114-Status: GOOD (  19.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Richard Fontana <rfontana@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Morten Rasmussen <morten.rasmussen@arm.com>,
 Rob Herring <robh@kernel.org>, Anup Patel <anup@brainfault.org>,
 Russell King <linux@armlinux.org.uk>, Ingo Molnar <mingo@kernel.org>,
 devicetree@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>,
 Rob Herring <robh+dt@kernel.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Otto Sabart <ottosabart@seberm.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep, Atish,

On Mon, 17 Jun 2019, Atish Patra wrote:

> From: Sudeep Holla <sudeep.holla@arm.com>
> 
> The current ARM DT topology description provides the operating system
> with a topological view of the system that is based on leaf nodes
> representing either cores or threads (in an SMT system) and a
> hierarchical set of cluster nodes that creates a hierarchical topology
> view of how those cores and threads are grouped.
> 
> However this hierarchical representation of clusters does not allow to
> describe what topology level actually represents the physical package or
> the socket boundary, which is a key piece of information to be used by
> an operating system to optimize resource allocation and scheduling.
> 
> Lets add a new "socket" node type in the cpu-map node to describe the
> same.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

This one doesn't apply cleanly here on top of v5.2-rc2, Linus's master 
branch, and next-20190626.  The reject file is below.  Am I missing 
a patch?


- Paul

--- Documentation/devicetree/bindings/arm/topology.txt
+++ Documentation/devicetree/bindings/arm/topology.txt
@@ -185,13 +206,15 @@ Bindings for cluster/cpu/thread nodes are defined as follows:
 4 - Example dts
 ===========================================
 
-Example 1 (ARM 64-bit, 16-cpu system, two clusters of clusters):
+Example 1 (ARM 64-bit, 16-cpu system, two clusters of clusters in a single
+physical socket):
 
 cpus {
 	#size-cells = <0>;
 	#address-cells = <2>;
 
 	cpu-map {
+		socket0 {
 			cluster0 {
 				cluster0 {
 					core0 {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
