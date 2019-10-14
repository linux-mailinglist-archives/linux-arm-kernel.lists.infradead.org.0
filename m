Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E492AD64F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 16:18:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IoNpmUzoXM9exkr9VmdJc44l1SudMwTGenAzi2j+tE8=; b=S1lpKdj9CQFXqpURexqNjagyn
	8Pi8Ub40+U6wflVfQLn1vXUeQFVThmHOVr6tnlX06NYEbGsYX34RAXevh2SrY8/omiIH+sqwKsOSD
	lfh8LzWIure8+cXROd0QxF2wWGx1GOgjbe/+Cdqp0ZzIlcDLiW0a6tq8OKGSdZKAXtZueDXijurC7
	EQlewIWvNJ0EpUIV1zbFfQI+PlPiLtqKQc4p+nOh1BX7m+LXrlvj6I08QEiQ3qbtS/ir0ezChZeFc
	9s+r+8O3xV74LBOhxqfS2KBGNHOIO0QE03ICCJrK4/x8NEKVSSeykamSO0d2RuJ0rPcR7Mb/5W3ux
	OUhFuKfeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK1BR-0003p3-95; Mon, 14 Oct 2019 14:18:49 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK1BB-0003mw-V1
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 14:18:35 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iK1B7-0001sz-0w; Mon, 14 Oct 2019 16:18:29 +0200
To: Remi Pommarel <repk@triplefau.lt>
Subject: Re: [PATCH v3] PCI: aardvark: Use LTSSM state to build link training
 flag
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Mon, 14 Oct 2019 15:18:28 +0100
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191014140026.GB1426@voidbox>
References: <20190522213351.21366-3-repk@triplefau.lt>
 <20190930154017.GF42880@e119886-lin.cambridge.arm.com>
 <20190930165230.GA12568@voidbox>
 <20191001080546.GI42880@e119886-lin.cambridge.arm.com>
 <20191013113415.3c653526@why>
 <20191014100129.GA18832@e121166-lin.cambridge.arm.com>
 <20191014130627.GA1426@voidbox>
 <eda65141ee1006fe3a93a9989867dc31@www.loen.fr>
 <20191014140026.GB1426@voidbox>
Message-ID: <971be151d24312cc533989a64bd454b4@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: repk@triplefau.lt, lorenzo.pieralisi@arm.com,
 andrew.murray@arm.com, ellierevves@gmail.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, helgaas@kernel.org, thomas.petazzoni@bootlin.com,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_071834_148126_18ACE673 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Ellie Reeves <ellierevves@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Helgaas <helgaas@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-14 15:00, Remi Pommarel wrote:
> On Mon, Oct 14, 2019 at 02:45:34PM +0100, Marc Zyngier wrote:
>> Hi Remi,
>>
>> On 2019-10-14 14:06, Remi Pommarel wrote:
>> > Hi Lorenzo, Marc,

[...]

>> > Sure, I think this could be considered a fix for the following 
>> commit :
>> > Fixes: 8a3ebd8de328 ("PCI: aardvark: Implement emulated root PCI
>> > bridge config space")
>> >
>> > Moreover, Marc, I am also a bit supprised that you did not have to 
>> use
>> > [1] to even be able to boot.
>>
>> No, I don't have that one, and yet the system boots fine (although 
>> PCI
>> doesn't get much use on this box). I guess I'm lucky...
>>
>> > Also if you want to be completely immune to this kind of SError 
>> (that
>> > could theoretically happen if the link goes down for other reasons 
>> than
>> > being retrained) you would have to use mainline ATF along with 
>> [2]. But
>> > the chances to hit that are low (could only happen in case of link
>> > errors).
>>
>> Now you've got me worried. Can you point me to that ATF patch? I'm 
>> quite
>> curious as to how you recover from an SError on a v8.0 CPU given 
>> that it
>> has no syndrome information and may as well signal "CPU on fire!"...
>>
>
> The patch is at [1]. Please note that this is done quite similarly 
> for
> rcar.
>
> [1] 
> https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/1541

That patch, without any other information, looks quite flaky. Unless 
there
is a strong guarantee that ESR_EL3.ISS==2 only when the PCIe controller
goes wrong, it looks like this only papers over the issue...

That's pretty much independent from the patch at hand in this thread, 
but
I certainly wouldn't trust this ATF patch without some more information
about how the fault is reported to the CPU.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
