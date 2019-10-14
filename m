Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A64A4D5BC5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 08:59:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZuyoAOKSIrLH0Q5poshuCuVFqwjhNAA4pk6oNQdXKtU=; b=uwzXrpSAGLosjW
	D0hnalGeBSRQ0oOzH8ar3JFS+QsWCAyKfEkYNuIZ5Xs7DWfE8P3JWIemXQWSRwuKgt/Cy1ffgdNqo
	tsVEQad6bm9nP4cdw2ZT/RZ9eKd9GYQY6UmCMZsUkJQs18DutUpYMNDTr/kB4dF0CKwlsNHZ3+sf8
	oBXK80EqZgy9ODEsH/xtyDQ6ViY8018EFp/FldI+GzvUrbHEc5kQdKvpelD6qKO4nNZopkVvb+KNu
	hdPbGYqG09zbmYr1+hLTXQH43CyrW3Ok9bGc5atEkyY0shX+7oHcMZvKJmYir42W4jdizPxFEghag
	mVOxx7t2MbMHR58xQXAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJuJv-00081q-LM; Mon, 14 Oct 2019 06:59:07 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJuJm-00080m-FU
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 06:59:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571036336;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:openpgp;
 bh=fTMccw4yJmRrZCZ9gNo4nMTzO7ADWuT1mX49M7Icnho=;
 b=UcVAZ/rojKZBIo6108mtI1ttegEVsuQUOZARFhTL6gknUSIw8HMb2/9XVpUppSO8JfhGmK
 WDHkzpeoAjnOZbFWHUpGoxKdf78CC3m7J1A66S76tgkgzieF42zcOx/UfEs+VgFkv7n37N
 lUjEa+FqFiyedE00d9UzvcJBEbZ2Glw=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-341-NztZkns7Oh6t_bjT82J_hQ-1; Mon, 14 Oct 2019 02:58:54 -0400
Received: by mail-wm1-f71.google.com with SMTP id r21so3914037wme.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 13 Oct 2019 23:58:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qg9GPSpE2649WBDEVbobtu+jtSwl5swPTKuvxOPA1Ww=;
 b=Rc5QyvrkDJlcVfQwV4+UlF8KCvVFIwYsD2z7lcQPOq2qlp6a+piccK2gRz06gYIk8f
 zT63ppVHQP+/roXo9o15NhLZNyDzwNgtvvGhGnz5wU/VluyRmn0oDdgaS+IaG+DS49SN
 w9tz8MihtbAFVu2i9pyY85/HAZMp8PK+ZkQfmVG19P/3vdF7AMM2YlOq6ImQjvfR6T8F
 fNmMy27BrCEhHTDvkqlzk4u6k5ko4Q1p4xWPHtNRtlD5W4MAYQu5wCbR0SBIdI6Vm2Y7
 OYUILj7bImdLgdvcCSJKIWbReIlKdrbMFHTNJui1tF+Dsid8T8RS86zm1tTGJNnsgf99
 SeNQ==
X-Gm-Message-State: APjAAAXNyerZ/WVLhsQTpJ9Gq29hompp/jxMfAKxXMrEpsyZTb9meNkY
 7YPDVYuz2U66gYFvPVgV1lgy1Q7qWPmWHhqykFKKAF43zxlr0NAoSGdexRxYDpQZlAhmrtBYxrn
 IHmLFlgRgFOjYY0MBwXKa5A/3DFLoG4q/3Jw=
X-Received: by 2002:a1c:106:: with SMTP id 6mr12661933wmb.134.1571036333212;
 Sun, 13 Oct 2019 23:58:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx2OUyyPpyXE9W0ygYy2lBrXHn8KLvNfyvMNxm3vCpYPWzXJRiYFSSA6PpWL9tHhL0NCFDn6Q==
X-Received: by 2002:a1c:106:: with SMTP id 6mr12661909wmb.134.1571036332956;
 Sun, 13 Oct 2019 23:58:52 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:ddc7:c53c:581a:7f3e?
 ([2001:b07:6468:f312:ddc7:c53c:581a:7f3e])
 by smtp.gmail.com with ESMTPSA id q19sm35151293wra.89.2019.10.13.23.58.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 13 Oct 2019 23:58:52 -0700 (PDT)
Subject: Re: [RFC PATCH v3 4/6] psci: Add hvc call service for ptp_kvm.
To: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>,
 Marc Zyngier <maz@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 Mark Rutland <Mark.Rutland@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>
References: <20190918080716.64242-1-jianyong.wu@arm.com>
 <20190918080716.64242-5-jianyong.wu@arm.com>
 <83ed7fac-277f-a31e-af37-8ec134f39d26@redhat.com>
 <HE1PR0801MB1676F57B317AE85E3B934B32F48E0@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <629538ea-13fb-e666-8df6-8ad23f114755@redhat.com>
 <HE1PR0801MB167639E2F025998058A77F86F4890@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <ef6ab8bd-41ad-88f8-9cfd-dc749ca65310@redhat.com>
 <a1b554b8-4417-5305-3419-fe71a8c50842@kernel.org>
 <56a5b885-62c8-c4ef-e2f8-e945c0eb700e@redhat.com>
 <HE1PR0801MB1676115C248E6DF09F9DD5A6F4950@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <1cc145ca-1af2-d46f-d530-0ae434005f0b@redhat.com>
 <HE1PR0801MB1676B1AD68544561403C3196F4950@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <6b8b59b2-a07e-7e33-588c-1da7658e3f1e@redhat.com>
 <HE1PR0801MB167635A4AA59FD93C45872E4F4900@HE1PR0801MB1676.eurprd08.prod.outlook.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <fc847a82-49cb-c931-617c-82ef5531963e@redhat.com>
Date: Mon, 14 Oct 2019 08:58:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <HE1PR0801MB167635A4AA59FD93C45872E4F4900@HE1PR0801MB1676.eurprd08.prod.outlook.com>
Content-Language: en-US
X-MC-Unique: NztZkns7Oh6t_bjT82J_hQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_235858_641749_7F87BEEF 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
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
Cc: "Justin He \(Arm Technology China\)" <Justin.He@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Steve Capper <Steve.Capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/10/19 07:50, Jianyong Wu (Arm Technology China) wrote:
>>
>> John (Stultz), does that sound good to you?  The context is that Jianyong
>> would like to add a hypercall that returns a (cycles,
>> nanoseconds) pair to the guest.  On x86 we're relying on the vclock_mode
>> field that is already there for the vDSO, but being able to just use
>> ktime_get_snapshot would be much nicer.
>>
> Could I add struct clocksource to system_time_snapshot struct in next version of my patch set?

Yes, I say go ahead.  At least it will get closer to a final design.

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
