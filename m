Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BD914D638
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 06:44:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PQT7ywcOF0GDckaOXVov8e42LNilJ50LLXQmrDWQRrU=; b=pJYGZqWHzletrU
	Pfn1sb0LEGc7fIMZDpaDvqSkaB26o5o6xS/0kPBCVYyQbJYtDRaDyf9JeqTFgLCF2SMwk5LPClYb1
	zm862IG09ZJOSKUHp0yQUNOv3s5mgxC0JHxAae8aQBsekdfQzqd3xCAh93Z/5V8QrMJBQHE8HT6OG
	3FTLjW+aapvnVZKbrc6qXand1bmjvJ1OsKRC0n1RTFf0Mavcxeb8MkAqALTpzLbzhGqXregha/jmb
	1epcRNiXPlo1MEiL5+/ASnnz6mWSl8ZX7fNenwtHIIr7c5XQIKuTm60d2Ot0jD5BDyElX0SPoQ+/G
	K9eUjo6BxGHuhPGDjHqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix2cv-0007Bw-K4; Thu, 30 Jan 2020 05:44:29 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix2cj-0007BQ-Lk
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 05:44:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580363055;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=b8PEF8AVAWODPDupJea+4sWEJHHfwQkjaA/7qcZmag4=;
 b=UR+xpOzq2Oi1BwmmU3zdSICRqwzLI703toR1PsXF/otrp12Y7EiXetVwDFT3nNt/5hNr6S
 LIhiu16hfo4YItahly7cn2OtL0g+4WrPae9KdT2dsmt45B/tCvpURasuNflHJI+oArQ9fB
 CwE1usxmVpAyzxYANaIs8r7S5Hv0Sm0=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-123-lmrsVTS5MAWQJiaj6CWH4Q-1; Thu, 30 Jan 2020 00:44:12 -0500
Received: by mail-wr1-f72.google.com with SMTP id k18so1231583wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Jan 2020 21:44:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=b8PEF8AVAWODPDupJea+4sWEJHHfwQkjaA/7qcZmag4=;
 b=CMnlXGJQiKORm5tj44dzcJTN0FiHac4ka1qgC7RBWuN6aPAAB4F/c5Fu0nV+phVS0i
 eHdHnB4mTlx6fWTt4gzvdlYY/1iIY17hccp5Lwu67p/O5gW8lxz9SloALsDgq7OeZiDg
 EXwnuAWeQfdBuegQbBGVEPDmfV26HT1/x9D6W3KQJCIBasc3PsHBVc3Q4gC5SypR4JZ7
 EK4AknJmK9aQd14L+ihRPkjnWvbcH9oNfr7AcFc8rwlWHuzmjqozYwc+BJLZfA3e5nCo
 QklnL9f5/czjVeySIOr2ZX1u+vZlxD55BvCZKisxE+7hy+kZJUH2xjiCVH6mbuuz8UaG
 m2XQ==
X-Gm-Message-State: APjAAAXBjUXbxxl1nszfQTdk0+15rYBxbjj+cnU4kYJrTLn6zbJpiSYY
 5Un2+uKn/Y02hATomWzpHHXXd+3mLhM1mCddO9JVPc3iPMGx2obJ4dk7d0GAXmb5IKen0/69H3L
 pUPiSKEkLnOgMe/W4uk8qR03//0Kq/aBaJN0=
X-Received: by 2002:a7b:cbcf:: with SMTP id n15mr3175358wmi.21.1580363051208; 
 Wed, 29 Jan 2020 21:44:11 -0800 (PST)
X-Google-Smtp-Source: APXvYqxvrtUyXEqgq8iYKVpAB/LAj4fC31bOc+VOTWRDvsFWxjJ6sWsl8qJGadVTcya+7iE6vbimVA==
X-Received: by 2002:a7b:cbcf:: with SMTP id n15mr3175335wmi.21.1580363050959; 
 Wed, 29 Jan 2020 21:44:10 -0800 (PST)
Received: from [10.1.251.141] ([80.188.125.198])
 by smtp.gmail.com with ESMTPSA id 4sm4795049wmg.22.2020.01.29.21.44.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Jan 2020 21:44:10 -0800 (PST)
Subject: Re: [PATCH 5/5] KVM: x86: Set kvm_x86_ops only after
 ->hardware_setup() completes
To: Sean Christopherson <sean.j.christopherson@intel.com>
References: <20200130001023.24339-1-sean.j.christopherson@intel.com>
 <20200130001023.24339-6-sean.j.christopherson@intel.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <44e0c550-7dcc-bfed-07c4-907e61d476a1@redhat.com>
Date: Thu, 30 Jan 2020 06:44:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20200130001023.24339-6-sean.j.christopherson@intel.com>
Content-Language: en-US
X-MC-Unique: lmrsVTS5MAWQJiaj6CWH4Q-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_214417_792901_B3DCBFDE 
X-CRM114-Status: UNSURE (   9.04  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/01/20 01:10, Sean Christopherson wrote:
> Set kvm_x86_ops with the vendor's ops only after ->hardware_setup()
> completes to "prevent" using kvm_x86_ops before they are ready, i.e. to
> generate a null pointer fault instead of silently consuming unconfigured
> state.

What about even copying kvm_x86_ops by value, so that they can be
accessed with "kvm_x86_ops.callback()" and save one memory access?

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
