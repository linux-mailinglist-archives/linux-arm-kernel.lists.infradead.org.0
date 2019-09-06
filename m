Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A86BABA6F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 16:13:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NwxYYOQJ363cVBIY38kLItvyS8vvZvWwtf6AUHTpVtM=; b=FN6kjWSZE0NRGZ7FI3p9T9Qj+
	yemvYcCgtjwDrmq3QFR0DMaChSfF6YFc7qMqGMq3ncX4HE47rHHS5isD9d6v6mfWCH5lqcBI4PIT1
	lfNAD9+o0vdUSFXQVZDk94N0i7o+j+NtkJ0fMpZBlwc/FWBn/tFfMZnJlGYFGPw0DIzBTIFOzcX9Z
	nGXGpKqAyw/8QhMHhJUElzpx0pj1+GsO+Mfnqv002POglYtOSQkru8eOJSPkp6UKrMLdtaQy2kEnG
	rBkNWB2K/jW19b9TbdKXDvNgflErkGSo6yVhiQVR5faKpm0cIpfWgKBzlEiFa4MqJDXxvSegwQdwA
	ujFEeL2Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6EzG-0007dV-A7; Fri, 06 Sep 2019 14:13:18 +0000
Received: from smtp-fw-6001.amazon.com ([52.95.48.154])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Ez0-0007d7-LL
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 14:13:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1567779182; x=1599315182;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=9G4bFzovgTxqFaJRsXnATnhBOQd8Ab1q5goy+J25MD4=;
 b=JEjCBTwdSLij4ASmlw97hai+VR/fKDDhI+yxWBtPOy1P2pJc77XIalDT
 UKmODJ2mHdm0IgVzixBTTaeJz3Zjo4yZvIfKBXp1BtUgu+syzL7DOMZ10
 TecSLPGlQlvkswdhtmq4ZLJCOflcBlsGDorJAJgmsgZ5xiWM1yvE1jddI k=;
X-IronPort-AV: E=Sophos;i="5.64,473,1559520000"; d="scan'208";a="413941107"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-1a-821c648d.us-east-1.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-6001.iad6.amazon.com with ESMTP;
 06 Sep 2019 14:12:59 +0000
Received: from EX13MTAUWC001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
 by email-inbound-relay-1a-821c648d.us-east-1.amazon.com (Postfix) with ESMTPS
 id F40E0A2404; Fri,  6 Sep 2019 14:12:56 +0000 (UTC)
Received: from EX13D20UWC001.ant.amazon.com (10.43.162.244) by
 EX13MTAUWC001.ant.amazon.com (10.43.162.135) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 6 Sep 2019 14:12:56 +0000
Received: from 38f9d3867b82.ant.amazon.com (10.43.162.242) by
 EX13D20UWC001.ant.amazon.com (10.43.162.244) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 6 Sep 2019 14:12:53 +0000
Subject: Re: [PATCH 1/1] KVM: inject data abort if instruction cannot be
 decoded
To: Peter Maydell <peter.maydell@linaro.org>
References: <20190904180736.29009-1-xypron.glpk@gmx.de>
 <86r24vrwyh.wl-maz@kernel.org>
 <CAFEAcA-mc6cLmRGdGNOBR0PC1f_VBjvTdAL6xYtKjApx3NoPgQ@mail.gmail.com>
 <86mufjrup7.wl-maz@kernel.org>
 <CAFEAcA9qkqkOTqSVrhTpt-NkZSNXomSBNiWo_D6Kr=QKYRRf=w@mail.gmail.com>
 <20190905092223.GC4320@e113682-lin.lund.arm.com>
 <4b6662bd-56e4-3c10-3b65-7c90828a22f9@kernel.org>
 <20190906080033.GF4320@e113682-lin.lund.arm.com>
 <a58c5f76-641a-8381-2cf3-e52d139c4236@amazon.com>
 <20190906131252.GG4320@e113682-lin.lund.arm.com>
 <CAFEAcA9vwyhAN8uO8=PpaBkBXb0Of4G0jEij7nMrYcnJjSRVjg@mail.gmail.com>
 <28c5c021-7cb0-616b-4215-dd75242c16e6@amazon.com>
 <CAFEAcA8HH-JeMLZ29h6GidDcLpb_oUHqoyEMJ0buo3hyTBj5jA@mail.gmail.com>
From: Alexander Graf <graf@amazon.com>
Message-ID: <f5af43d5-d8f6-58f1-bd25-909e4e94ddb0@amazon.com>
Date: Fri, 6 Sep 2019 16:12:51 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAFEAcA8HH-JeMLZ29h6GidDcLpb_oUHqoyEMJ0buo3hyTBj5jA@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.43.162.242]
X-ClientProxiedBy: EX13D18UWC003.ant.amazon.com (10.43.162.237) To
 EX13D20UWC001.ant.amazon.com (10.43.162.244)
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_071302_906720_96A5067D 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -2.2 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.48.154 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: =?UTF-8?Q?Daniel_P=2e_Berrang=c3=a9?= <berrange@redhat.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Christoffer Dall <christoffer.dall@arm.com>,
 lkml - Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stefan Hajnoczi <stefanha@redhat.com>, Marc Zyngier <maz@kernel.org>,
 kvmarm@lists.cs.columbia.edu,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 06.09.19 15:50, Peter Maydell wrote:
> On Fri, 6 Sep 2019 at 14:41, Alexander Graf <graf@amazon.com> wrote:
>> On 06.09.19 15:31, Peter Maydell wrote:
>>> (b) we try to reuse the code we already have that does TCG exception
>>> injection, which might or might not be a design mistake, and
>>
>> That's probably a design mistake, correct :)
> 
> Well, conceptually it's not necessarily a bad idea, because
> in both cases what we're doing is "change the system register
> state (PC, ESR_EL1, ELR_EL1 etc) so that the CPU looks like
> it's just taken an exception"; but some of what the
> TCG code needs to do isn't necessary for KVM and all of it
> was not written with the idea of KVM in mind at all...

Yes, and it probably makes sense to model the QEMU internal API 
similarly, so that exception generating code does not have to distinguish.

However, it's much easier for KVM to ensure exception prioritization as 
well as internal state synchronization. Conceptually, as you've seen, it 
really doesn't make a lot of sense to pull register state from KVM, 
wiggle it and then push it down when KVM has awareness of the same 
transformation anyway.

So I guess the path is clear: Create a generic interface for exception 
injection and a separate patch similar to what Christoffer already 
posted with the new CAP to route illegal MMIO traps into user space.

Connecting the two dots in user space really should be trivial then.

(famous last words)


Alex



Amazon Development Center Germany GmbH
Krausenstr. 38
10117 Berlin
Geschaeftsfuehrung: Christian Schlaeger, Ralf Herbrich
Eingetragen am Amtsgericht Charlottenburg unter HRB 149173 B
Sitz: Berlin
Ust-ID: DE 289 237 879


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
