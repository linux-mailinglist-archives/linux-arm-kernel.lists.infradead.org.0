Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A5C18CC05
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 11:57:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6jND7Qi80QWBQNnnxdOsNqY0tyQRGUf3faEyqtir2gU=; b=NtvoBu6pLuYDXT
	jivHHP7j3H8RFnzifmLuzWsgUulRvapzNscJDoM7e+GjRF+RWy1SIpncJjSKMrhiJS9H+CVO9vDtV
	qokcwRarA9bOyCjMCKEfJPCFuGbyWGMY5pyIjxasfh/jupwd8dCJ4Tx+/M3uM0dG1sn55freNGAnZ
	JNrbUXgaMJJm7Hh6e3gV5eeUhXkFINx2rJXivHxLY5BUHni9qcVQNMtrT2TqKNld/ZwKkmY2FdRPR
	sx4lpXecZXDRZvtDQt33seULpt4JyOJmk7ryqMfSElTk9dP619AmUels7DXTs8JJvuqRMlHet8Pfp
	pIVXsCfRfS92JMYkKggw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFFKy-0002p9-Hm; Fri, 20 Mar 2020 10:57:12 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFFKo-0002oX-9B
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 10:57:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584701820;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=H3cw3n7DECAvhMsR5v/8iVgWxi7rS06XuVpILiRCFOk=;
 b=c7M1lzi/nvhL3yQVFSwZQi9hUWrRFdIyzCFuelQ5+DIY84ynz+GeRSmdL/8qrs6eBXwsAf
 Y3nuDvs/jJfQb1Pl7fuqI1ZHOcM/CUmNpT3tdEwAD120pcEPbt8P40tqc2XKWMfEaNNM3l
 hGOsZDoLgBLseSSsMkmzOj+q3ol3JWg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-2-OwZAXjqLMAKh5q-K0N9TJQ-1; Fri, 20 Mar 2020 06:56:56 -0400
X-MC-Unique: OwZAXjqLMAKh5q-K0N9TJQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EB188800EBD;
 Fri, 20 Mar 2020 10:56:53 +0000 (UTC)
Received: from [10.36.113.142] (ovpn-113-142.ams2.redhat.com [10.36.113.142])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0C5565C1D8;
 Fri, 20 Mar 2020 10:56:49 +0000 (UTC)
Subject: Re: [PATCH v5 18/23] KVM: arm64: GICv4.1: Add direct injection
 capability to SGI registers
To: Marc Zyngier <maz@kernel.org>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-19-maz@kernel.org>
 <06705d70-0f99-e719-af52-1a5f778562d8@redhat.com>
 <3f7094ffd77a6615d7179be94dbecc60@kernel.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <9b1ce453-f24f-7974-99ca-1608ad7c6a13@redhat.com>
Date: Fri, 20 Mar 2020 11:56:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <3f7094ffd77a6615d7179be94dbecc60@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_035702_400125_F4896265 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 3/20/20 11:05 AM, Marc Zyngier wrote:
> Hi Eric,
> =

> On 2020-03-20 08:11, Auger Eric wrote:
>> Hi Marc,
>> On 3/4/20 9:33 PM, Marc Zyngier wrote:
>>> Most of the GICv3 emulation code that deals with SGIs now has to be
>>> aware of the v4.1 capabilities in order to benefit from it.
>>>
>>> Add such support, keyed on the interrupt having the hw flag set and
>>> being a SGI.
>>>
>>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>>> ---
>>> =A0virt/kvm/arm/vgic/vgic-mmio-v3.c | 15 +++++-
>>> =A0virt/kvm/arm/vgic/vgic-mmio.c=A0=A0=A0 | 88 ++++++++++++++++++++++++=
++++++--
>>> =A02 files changed, 96 insertions(+), 7 deletions(-)
>>>
> =

> [...]
> =

>>> @@ -113,7 +125,21 @@ void vgic_mmio_write_senable(struct kvm_vcpu *vcpu,
>>> =A0=A0=A0=A0=A0=A0=A0=A0 struct vgic_irq *irq =3D vgic_get_irq(vcpu->kv=
m, vcpu, intid +
>>> i);
>>>
>>> =A0=A0=A0=A0=A0=A0=A0=A0 raw_spin_lock_irqsave(&irq->irq_lock, flags);
>>> -=A0=A0=A0=A0=A0=A0=A0 if (vgic_irq_is_mapped_level(irq)) {
>>> +=A0=A0=A0=A0=A0=A0=A0 if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (!irq->enabled) {
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct irq_data *data;
>>> +
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 irq->enabled =3D true;
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 data =3D &irq_to_desc(ir=
q->host_irq)->irq_data;
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 while (irqd_irq_disabled=
(data))
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 enable_irq(i=
rq->host_irq);
>> could you explain me why the while() is requested?
> =

> Ah, interesting question: disable_irq() (and its variants) can nest. This
> means that if you have done two disable_irq(), you must do two enable_irq=
()
> to get back to the interrupt being enabled.
> =

> The locking should ensure that this nesting doesn't happen, but I'm
> paranoid
> (see the GICv4.0 doorbell handling). It also makes it easier to reason
> about
> the initial state.

OK! thank you for this explanation.

Thanks

Eric
> =

> [...]
> =

>> Reviewed-by: Eric Auger <eric.auger@redhat.com>
> =

> Thanks!
> =

> =A0=A0=A0=A0=A0=A0=A0=A0 M.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
