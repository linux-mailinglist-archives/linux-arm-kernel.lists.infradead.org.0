Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7EDA9E35
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 11:23:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QmepKlVSzq7XdUB9dSWtQgJUV4Xs7Af0EYAISFxz7Hk=; b=fdbN/4z+qqQoZc
	rI+EBo3J9c5rCxtyByqXT5hkVhC1q7bABJL7LXWoaMLw+0zDXxbHa8xebO2p3406qKZlKHSUGoCvL
	BDUvCpF8xnWSrnjV9cyomBos/u7BsBAGpK+O3bUm7hejhqlX4KiRXt0inOeq/hZ161CjT6al8YZyx
	8Ee66DV0MeLUyBnRI93XnrL/mvWtMqaIlAdQFCl5A8KqjuRI7ljKL9dEW7qvY+v13RGJdI25kjyVO
	3wOxUpAHkMRpkxX/+mTCZL7tRzNtRLToJx6HtRe8Guvvq4P+7tNixJ3QeM5RUJqngjjih4fjACwBO
	+b6vy0R2FIPOVqbSHwHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5nzO-0005DX-Ut; Thu, 05 Sep 2019 09:23:38 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5nzA-0005CU-B6
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 09:23:26 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A0291190C034;
 Thu,  5 Sep 2019 09:23:23 +0000 (UTC)
Received: from redhat.com (unknown [10.42.17.64])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EC0485D712;
 Thu,  5 Sep 2019 09:23:19 +0000 (UTC)
Date: Thu, 5 Sep 2019 10:23:17 +0100
From: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>
To: Stefan Hajnoczi <stefanha@redhat.com>
Subject: Re: [PATCH 1/1] KVM: inject data abort if instruction cannot be
 decoded
Message-ID: <20190905092317.GB14512@redhat.com>
References: <20190904180736.29009-1-xypron.glpk@gmx.de>
 <20190905092039.GG32415@stefanha-x1.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905092039.GG32415@stefanha-x1.localdomain>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.70]); Thu, 05 Sep 2019 09:23:23 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_022324_429742_DD8C4273 
X-CRM114-Status: GOOD (  25.93  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Reply-To: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>
Cc: Peter Maydell <peter.maydell@linaro.org>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Julien Thierry <julien.thierry@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 10:20:39AM +0100, Stefan Hajnoczi wrote:
> On Wed, Sep 04, 2019 at 08:07:36PM +0200, Heinrich Schuchardt wrote:
> > If an application tries to access memory that is not mapped, an error
> > ENOSYS, "load/store instruction decoding not implemented" may occur.
> > QEMU will hang with a register dump.
> > 
> > Instead create a data abort that can be handled gracefully by the
> > application running in the virtual environment.
> > 
> > Now the virtual machine can react to the event in the most appropriate
> > way - by recovering, by writing an informative log, or by rebooting.
> > 
> > Signed-off-by: Heinrich Schuchardt <xypron.glpk@gmx.de>
> > ---
> >  virt/kvm/arm/mmio.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/virt/kvm/arm/mmio.c b/virt/kvm/arm/mmio.c
> > index a8a6a0c883f1..0cbed7d6a0f4 100644
> > --- a/virt/kvm/arm/mmio.c
> > +++ b/virt/kvm/arm/mmio.c
> > @@ -161,8 +161,8 @@ int io_mem_abort(struct kvm_vcpu *vcpu, struct kvm_run *run,
> >  		if (ret)
> >  			return ret;
> >  	} else {
> > -		kvm_err("load/store instruction decoding not implemented\n");
> > -		return -ENOSYS;
> > +		kvm_inject_dabt(vcpu, kvm_vcpu_get_hfar(vcpu));
> > +		return 1;
> 
> I see this more as a temporary debugging hack than something to merge.
> 
> It sounds like in your case the guest environment provided good
> debugging information and you preferred it over debugging this from the
> host side.  That's fine, but allowing the guest to continue running in
> the general case makes it much harder to track down the root cause of a
> problem because many guest CPU instructions may be executed after the
> original problem occurs.  Other guest software may fail silently in
> weird ways.  IMO it's best to fail early.

The current error message is quite limited in its usefulness - mostly
you have to be able to google the message and hope to hit a previous
report which explains the problem, or find someone on IRC who remembers
the problem, etc.

Could we put a text doc in the kernel tree explaining the problem in
enough detail that people can identify their next steps to resolve it,
and then make this error message tell people to read that text doc.

Regards,
Daniel
-- 
|: https://berrange.com      -o-    https://www.flickr.com/photos/dberrange :|
|: https://libvirt.org         -o-            https://fstop138.berrange.com :|
|: https://entangle-photo.org    -o-    https://www.instagram.com/dberrange :|

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
