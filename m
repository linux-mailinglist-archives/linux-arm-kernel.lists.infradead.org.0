Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D13D123A32
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 23:48:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=00vRz93E5oj5Bd57vlSymLeSMA4U33yFXMyl+gJPXgk=; b=Q4PdbGzlTMnSBq
	h5wOVLYqlHdZropPMNzIN/eM7eP51xBMdjfGaxi/V1tXpa/jzCFBQWm3zsb0qjUC8msmmEHCHqGPz
	YKJDhnzuqC21P1Hsgf7NcUqz328vDX1iQmvWSnsec2ceVqrkIMZ5VgAqg8Zqm3FcOz7iztewM4njS
	H/4jWSv1V0g1+lyzAUdDc8ayVjg4u2WpdxJiPDA74pcZX/736GOHbIGkMiaiTWUsmCtSqGXBwDKrO
	lSqd54U3zDOS0NdFBItDImAZSPdRYEHN1duPxjZVRBW+BQwmDIWxD7ifnglnfPdcQMnLlsknd4sAv
	BK1K1C14l17HZchQPt7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihLdZ-0002oR-HA; Tue, 17 Dec 2019 22:48:17 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihLdR-0002nj-G8
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 22:48:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576622887;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GUm1o1HftWcEMgvrx1o44ybgamZGXLGGPDBSRSJvzJQ=;
 b=ENPY9rmtCVRMSMGqJX0f8SJ3+u7tkrH3bCd3f9oaxwoQER/Oalxtl4WhN7Gz7EczaiVS9z
 pDY5LAlAoEwD/WaU7rt8cKf8TFb+LJJ84fXByZnyzwn0/5usOanvh6wRd9w4Qfnb91t3z4
 o7vf3hnwdrMfmJw9eXeWfP578UYsEwI=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-353-wh36nsyxOt25XHu8gQQBlw-1; Tue, 17 Dec 2019 17:48:05 -0500
Received: by mail-qv1-f72.google.com with SMTP id 75so161225qva.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 14:48:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9n/i9QgxhO0hGtWuQAcaruEVu8v3TGl7tcrGGNBkk0M=;
 b=rOjpNlr4/sYqi5VNJcENXc7vo9c6EANHRgpC94GTx+wYFMCrxRPlfamPfno5pE9kBI
 tSrOOJROplCm5wvp9GKm3By+TwRVvu0vgzRQKWD2rTojxnnFNx67ksLQ0AOhIsDrpDmg
 Zuu/+usqw1S00y3L7O8qhI5wnVjZhcXz1dDYwm9bm31REW8eJBrEKXEl4Z6v/at2Ejyj
 Frm1i6qLYZRmQp2jiQ0zzDjl5S5O3IFob5HpOYCj0OnfQ7BZBthZ7GGeQ+3RZCiwl0s5
 v+K4zYaUpmXNErQOzctcf+1UjGnKsI9TaYn1z0p7JqdHC8EBAVXv20WqUG2f/sPeQ0gZ
 I1GA==
X-Gm-Message-State: APjAAAW2JcSThZTF97XfPC2iscQY58jMCmBpfPKcQj7BO3L8xnBtHuRP
 0GfbsTGEBStm3lGEKJ2rs0kSu/dkB3R3I3Px1QBTE4jBRNNzpHEFMF7xmVc61e4G87PjUkHsVnH
 wkUBecMoYTlRx6OvqXH6t4YgauOyMH+rSrlU=
X-Received: by 2002:a37:7685:: with SMTP id r127mr461138qkc.166.1576622885312; 
 Tue, 17 Dec 2019 14:48:05 -0800 (PST)
X-Google-Smtp-Source: APXvYqzzAlgi3q/A/lG8/yssi/9qke3Y+PomWjoA6OIsiWSdyH+oKnvcw0q0J4LOd+HEQncOFra+UA==
X-Received: by 2002:a37:7685:: with SMTP id r127mr461111qkc.166.1576622885122; 
 Tue, 17 Dec 2019 14:48:05 -0800 (PST)
Received: from xz-x1 ([104.156.64.74])
 by smtp.gmail.com with ESMTPSA id 63sm15645qki.57.2019.12.17.14.48.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 14:48:04 -0800 (PST)
Date: Tue, 17 Dec 2019 17:48:02 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v4 11/19] KVM: x86: Free arrays for old memslot when
 moving memslot's base gfn
Message-ID: <20191217224802.GA26669@xz-x1>
References: <20191217204041.10815-1-sean.j.christopherson@intel.com>
 <20191217204041.10815-12-sean.j.christopherson@intel.com>
MIME-Version: 1.0
In-Reply-To: <20191217204041.10815-12-sean.j.christopherson@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-MC-Unique: wh36nsyxOt25XHu8gQQBlw-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_144809_621276_0DF31859 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Wanpeng Li <wanpengli@tencent.com>, Janosch Frank <frankja@linux.ibm.com>,
 kvm@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 James Hogan <jhogan@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-kernel@vger.kernel.org,
 Philippe =?utf-8?Q?Mathieu-Daud=C3=A9?= <f4bug@amsat.org>,
 kvm-ppc@vger.kernel.org, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Marc Zyngier <maz@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 12:40:33PM -0800, Sean Christopherson wrote:
> Explicitly free the metadata arrays (stored in slot->arch) in the old
> memslot structure when moving the memslot's base gfn is committed.  This
> eliminates x86's dependency on kvm_free_memslot() being called when a
> memlsot move is committed, and paves the way for removing the funky code
> in kvm_free_memslot() that conditionally frees structures based on its
> @dont param.
> 
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>

Reviewed-by: Peter Xu <peterx@redhat.com>

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
