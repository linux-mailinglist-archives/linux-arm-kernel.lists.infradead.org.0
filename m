Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD1D1EBC50
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 15:03:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/Fn3M3XQW+g96oIrnJHJME0QU5M4lRahDLdBvcxtKpY=; b=NIo4XUB/ZyAxKT8ZvCOp6Pkbf
	GTHT1Nur/AUiMWq31ag+PAeSo3nZX7S4KiFVXE9X7PeZurbFeoK/aciyvxlKggh/LxTDMHkuj5IfE
	bu5v5dIVluSxsH5Q4RWfWW8liNigadyUq9nWnuNM6hQo8Ey0eCNHWVUFIqmiBD/1T/28nucc2kyjr
	244Wmn6Yps0f/lsagrIMNJ6efZIkP9FrWUmo7pgFiACQ+0eW7TxU2E4mXobnVuT3NgkPIErLyvvNI
	5ZawCMkQmLKvOsJdESujAsbFCihhzIq3Ni/mZdjlGcAE0BfYwZlw5TPmM6Roud8r7Fx434EV02cTQ
	EsCIPOtCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg6Zb-0001vO-Ou; Tue, 02 Jun 2020 13:03:19 +0000
Received: from disco-boy.misterjones.org ([51.254.78.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg6ZU-0001uH-Jh; Tue, 02 Jun 2020 13:03:14 +0000
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@misterjones.org>)
 id 1jg6Z5-00HBxM-LQ; Tue, 02 Jun 2020 14:02:47 +0100
MIME-Version: 1.0
Date: Tue, 02 Jun 2020 14:02:47 +0100
From: Marc Zyngier <maz@misterjones.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: Security Random Number Generator support
In-Reply-To: <CAMj1kXHjAdk5=-uSh_=S9j5cz42zr3h6t+YYGy+obevuQDp0fg@mail.gmail.com>
References: <1591085678-22764-1-git-send-email-neal.liu@mediatek.com>
 <CAMj1kXHjAdk5=-uSh_=S9j5cz42zr3h6t+YYGy+obevuQDp0fg@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <85dfc0142d3879d50c0ba18bcc71e199@misterjones.org>
X-Sender: maz@misterjones.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: ardb@kernel.org, neal.liu@mediatek.com,
 devicetree@vger.kernel.org, herbert@gondor.apana.org.au, arnd@arndb.de,
 gregkh@linuxfoundation.org, sean.wang@kernel.org, linux-kernel@vger.kernel.org,
 wsd_upstream@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, linux-crypto@vger.kernel.org,
 mpm@selenic.com, matthias.bgg@gmail.com, Crystal.Guo@mediatek.com,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@misterjones.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_060312_645149_548C4111 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED
 DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sean Wang <sean.wang@kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 wsd_upstream@mediatek.com, Crystal Guo <Crystal.Guo@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, Neal Liu <neal.liu@mediatek.com>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Matt Mackall <mpm@selenic.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-02 13:14, Ard Biesheuvel wrote:
> On Tue, 2 Jun 2020 at 10:15, Neal Liu <neal.liu@mediatek.com> wrote:
>> 
>> These patch series introduce a security random number generator
>> which provides a generic interface to get hardware rnd from Secure
>> state. The Secure state can be Arm Trusted Firmware(ATF), Trusted
>> Execution Environment(TEE), or even EL2 hypervisor.
>> 
>> Patch #1..2 adds sec-rng kernel driver for Trustzone based SoCs.
>> For security awareness SoCs on ARMv8 with TrustZone enabled,
>> peripherals like entropy sources is not accessible from normal world
>> (linux) and rather accessible from secure world (HYP/ATF/TEE) only.
>> This driver aims to provide a generic interface to Arm Trusted
>> Firmware or Hypervisor rng service.
>> 
>> 
>> changes since v1:
>> - rename mt67xx-rng to mtk-sec-rng since all MediaTek ARMv8 SoCs can 
>> reuse
>>   this driver.
>>   - refine coding style and unnecessary check.
>> 
>>   changes since v2:
>>   - remove unused comments.
>>   - remove redundant variable.
>> 
>>   changes since v3:
>>   - add dt-bindings for MediaTek rng with TrustZone enabled.
>>   - revise HWRNG SMC call fid.
>> 
>>   changes since v4:
>>   - move bindings to the arm/firmware directory.
>>   - revise driver init flow to check more property.
>> 
>>   changes since v5:
>>   - refactor to more generic security rng driver which
>>     is not platform specific.
>> 
>> *** BLURB HERE ***
>> 
>> Neal Liu (2):
>>   dt-bindings: rng: add bindings for sec-rng
>>   hwrng: add sec-rng driver
>> 
> 
> There is no reason to model a SMC call as a driver, and represent it
> via a DT node like this.

+1.

> It would be much better if this SMC interface is made truly generic,
> and wired into the arch_get_random() interface, which can be used much
> earlier.

Wasn't there a plan to standardize a SMC call to rule them all?

         M.
-- 
Who you jivin' with that Cosmik Debris?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
