Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C32153B52
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 23:48:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aVU64Meonbe1aat1Zo46HOXCngAokP3FN2eqQb0+bjo=; b=MlNvE7PWvtHtRl
	MPu2/Vht1L0kTjgbovPj/hmQniTRCdto5daEgPqIFGN3Z4YxA5hxo998EDJltQk3XaHAf58QJMQzg
	QA99j+cYt53uBSYBydWtKAIcpq+d5ATur3t37dF52sIUP2TAAO6kqboLZUETSDrtVtQ2eXISv0HT1
	Bo7r25DZrIZKbFFA3wAkGxg6OZ4JfaQF6MMAimJ8OR4FHliPhRxOPLWZ2sRsgFY+U/crsGPYzZsQx
	Di6U9eHWrdBmTFteActiRXQT7wHOWtEKtvkCbvR0e9SMKhen0D5m29fDcCOOPmUFs9lAN/BwWD4OG
	ba7zWst0kyof9RVBirVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izTT6-0004Ok-Vm; Wed, 05 Feb 2020 22:48:25 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izTSy-0004Nz-3O
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 22:48:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580942894;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UTyFakDDuLK102/yDNVxyRkfYzuB7bVGBHMGZVGioTU=;
 b=C7kd5tywzicpybC0Hve6XPGb52PYXV4+XZMPFjr12ZqKkPYO/rsN4bYUFB2R8eoOvJ38/K
 EkASss5ZxM7M1UeR8/w2qwVKYatjDp4EsJQICIlc3UjURx2orSsUJbhGdWjk/2tNDyUc8U
 6+bx2RppiurSfZvZ0TWWMg3I/C/0bH4=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-339-Xc42KG28M1OpBJJc3rbpIQ-1; Wed, 05 Feb 2020 17:48:13 -0500
Received: by mail-qt1-f198.google.com with SMTP id x8so2467787qtq.14
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 14:48:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=2cHEFoE8jbw7EqsKmYikm9pxnEO2ox+NzDcqYlTv6MQ=;
 b=cPyADVxEUU/38QmU2ml/N5Tj+oWMBl2e1qSMHWdf46ead/+HHlaz4zAOPn3sigRC+8
 Wn6EvKiIOzuqAS8iJhSPwQxl+rSirIAau9tdtnckBuS2ct/4R7//jKa415XTQf3dcICB
 Sk2DK0eaQijtr7HBXw5VuluAMq9vwupQhQ3Di6/oe/b2Nf/xMbNEUd1BLgWN+ZaW8uY3
 IAeUM6b1iGFR0VXLuoYYpRx45/Rd5cSIrrzs73uV4ca26ECkA5FB87ehRClUSWb02oGc
 7dS8OSX4SoIXTa/vPn88m8fLdkzXM5t6P8nWDv4FMzkYi5tsw79VBWS5gJnrQ+J2qGNa
 +xxQ==
X-Gm-Message-State: APjAAAWyiviw8zyLQMy7YxuGNB50HJpD5yyj8IKpyDum4mCL4yZm7CpR
 LEsQUOLu8TVDHqPN4CsUECpshzh2aQ+14ABND+p/oQn45/b/aPXoze5OTPXiHGGzmpFKvo1UKc+
 1nUwqX4dkb1KnpcUoIZtVfSM7pch6CLInQiY=
X-Received: by 2002:ac8:718e:: with SMTP id w14mr82101qto.266.1580942892811;
 Wed, 05 Feb 2020 14:48:12 -0800 (PST)
X-Google-Smtp-Source: APXvYqzidgvMzifyXKMl5xyBUEvf76nUThQJ4Vf+I9H3f+5mpj/6PKciWyQRPVlUWOeD9yt6R/onsg==
X-Received: by 2002:ac8:718e:: with SMTP id w14mr82077qto.266.1580942892562;
 Wed, 05 Feb 2020 14:48:12 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id s67sm562392qke.1.2020.02.05.14.48.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Feb 2020 14:48:11 -0800 (PST)
Date: Wed, 5 Feb 2020 17:48:09 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v5 08/19] KVM: Refactor error handling for setting memory
 region
Message-ID: <20200205224809.GI387680@xz-x1>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-9-sean.j.christopherson@intel.com>
MIME-Version: 1.0
In-Reply-To: <20200121223157.15263-9-sean.j.christopherson@intel.com>
X-MC-Unique: Xc42KG28M1OpBJJc3rbpIQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_144816_219909_2F7C71AD 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>, kvmarm@lists.cs.columbia.edu,
 Janosch Frank <frankja@linux.ibm.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvm-ppc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Cornelia Huck <cohuck@redhat.com>, Christoffer Dall <christoffer.dall@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Philippe =?utf-8?Q?Mathieu-Daud=C3=A9?= <f4bug@amsat.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKYW4gMjEsIDIwMjAgYXQgMDI6MzE6NDZQTSAtMDgwMCwgU2VhbiBDaHJpc3RvcGhl
cnNvbiB3cm90ZToKPiBSZXBsYWNlIGEgYmlnIHBpbGUgbycgZ290b3Mgd2l0aCByZXR1cm5zIHRv
IG1ha2UgaXQgbW9yZSBvYnZpb3VzIHdoYXQKPiBlcnJvciBjb2RlIGlzIGJlaW5nIHJldHVybmVk
LCBhbmQgdG8gcHJlcGFyZSBmb3IgcmVmYWN0b3JpbmcgdGhlCj4gZnVuY3Rpb25hbCwgaS5lLiBw
b3N0LWNoZWNrcywgcG9ydGlvbiBvZiBfX2t2bV9zZXRfbWVtb3J5X3JlZ2lvbigpLgo+IAo+IFJl
dmlld2VkLWJ5OiBKYW5vc2NoIEZyYW5rIDxmcmFua2phQGxpbnV4LmlibS5jb20+Cj4gUmV2aWV3
ZWQtYnk6IFBoaWxpcHBlIE1hdGhpZXUtRGF1ZMOpIDxmNGJ1Z0BhbXNhdC5vcmc+Cj4gU2lnbmVk
LW9mZi1ieTogU2VhbiBDaHJpc3RvcGhlcnNvbiA8c2Vhbi5qLmNocmlzdG9waGVyc29uQGludGVs
LmNvbT4KClJldmlld2VkLWJ5OiBQZXRlciBYdSA8cGV0ZXJ4QHJlZGhhdC5jb20+CgotLSAKUGV0
ZXIgWHUKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
