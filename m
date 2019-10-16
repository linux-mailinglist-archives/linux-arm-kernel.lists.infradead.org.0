Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73344D890A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 09:10:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uU7kzuPvgRr4BPfb3oA5U1Vt/luBhte3dZCMMaMNoEk=; b=k9Btvz8V5l2kOX
	dqK2MbhgZmkEMTxA5MZ7zo1MV4s6MKACDQkeDde3simlGAyro11xzeVzteS7dxlXCN7Tz0HfeepWA
	dO3Tc7rBh8JOkletQuqC95z3sdgyUjnkDyNOzwhTEq7h6f+KL/MmH8/obNAlRjl/6X+0ndRn3T7vT
	wOWsug13EAfpFXr0l+2CRvRBSSyKFOl+3eEo/P3jIGH+cKPaecAQU+bRS4HfI53ZoWM6jcZlwhlQu
	yUbriJ1aiVgSaSNySU+qlQl8/mzz/5c3jZ4J2yjFnFLGc2a+i8y6JHjAhRPvAwnJZTNih+iwK/NTA
	KpWndWCme7rVitBj/5BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKdS7-0002FX-CH; Wed, 16 Oct 2019 07:10:35 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKdRn-0002BA-WC
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 07:10:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571209814;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=48tYkDJe0SqGLusONClw8lIZHFqflqFfRXBr2ATDPpg=;
 b=GKgW1OL/FahmEMEPnVRlhc83pv91k1PRFMCmslYXewM+KBXN6de1P8s7a0fvCgGETbUBPj
 porDa0t7FtFLPDDDZQNNY/PEmfWHafaw93s3eBmpl3iSIvWgBi4CXm+HKp9d4m2kSZc+px
 n6+fz7/WulXAZJDilltYAvEI2IUzTDU=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-115-_vXCJ2GGNcSrAFI-lrsoVg-1; Wed, 16 Oct 2019 03:10:10 -0400
Received: by mail-wm1-f72.google.com with SMTP id z205so752536wmb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 00:10:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8b7UpnoPmb5i1nQSpxNz3HRMIYoZAJY2z85wR9Og0Oo=;
 b=omPUjXsbHdgBVA+QkTBOokSZIpkKij6LNciIXhhopWJyiAA3lL0wzxmuGvSa2ISWH4
 BXrTJWUbxN2ydaYNrBTzzx+N/W+Ghj9ERNrfsyFTYkTjRqZQqB89Lz5eEuDr2W7Q1GOD
 WnzwK91GqEVKKSKKb2TuZm40LvNH1dBOaUeO+BBqCACLbdj3Yc0NsHwI+XJpyBDZQ33P
 3CKSqsa2BEJU529k/OTqXA5/31RXgNxZjbPsaVLl80UlzYzRxQYGSlTlu5Jy2FnkSJFq
 5nvOCoPIFfBjkkn2eDPoykuan6crQvsQMEb92hvxiavw4XFvwjECMxQ0l7gUiEv4pfHP
 TW2Q==
X-Gm-Message-State: APjAAAWUTzSG6j0fGBqAchjurRPxjueGcxigpJ9aRp52r4PKK1nz4CLm
 CdXKR3x2em3MwQO/QUMsQPU7emqA98XmNQ4GfepKUFBHMaburOjhyVtMiQGOW4h4AZGFkAu6Ag6
 AvRwbiC8s+lqZa3qrSr1ME9M1JgNm56P/j4Y=
X-Received: by 2002:adf:cc8e:: with SMTP id p14mr1342967wrj.301.1571209809457; 
 Wed, 16 Oct 2019 00:10:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzVEQNXaAuAJVOUPKU0UPAGNhg1SfcLUKvaqKnrK8g/JFc1UdJaCdRin1J2hoFdoWeTpE0hnA==
X-Received: by 2002:adf:cc8e:: with SMTP id p14mr1342946wrj.301.1571209809203; 
 Wed, 16 Oct 2019 00:10:09 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:ddc7:c53c:581a:7f3e?
 ([2001:b07:6468:f312:ddc7:c53c:581a:7f3e])
 by smtp.gmail.com with ESMTPSA id e18sm33448011wrv.63.2019.10.16.00.10.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 16 Oct 2019 00:10:08 -0700 (PDT)
Subject: Re: [PATCH v5 2/6] ptp: Reorganize ptp_kvm modules to make it
 arch-independent.
To: Jianyong Wu <jianyong.wu@arm.com>, netdev@vger.kernel.org,
 yangbo.lu@nxp.com, john.stultz@linaro.org, tglx@linutronix.de,
 sean.j.christopherson@intel.com, maz@kernel.org, richardcochran@gmail.com,
 Mark.Rutland@arm.com, will@kernel.org, suzuki.poulose@arm.com
References: <20191015104822.13890-1-jianyong.wu@arm.com>
 <20191015104822.13890-3-jianyong.wu@arm.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <e0260f51-ad29-02ba-a46f-ebaa68f7a9ea@redhat.com>
Date: Wed, 16 Oct 2019 09:10:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191015104822.13890-3-jianyong.wu@arm.com>
Content-Language: en-US
X-MC-Unique: _vXCJ2GGNcSrAFI-lrsoVg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_001016_163925_6A36A3CB 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: justin.he@arm.com, kvm@vger.kernel.org, Steve.Capper@arm.com,
 linux-kernel@vger.kernel.org, Kaly.Xin@arm.com, nd@arm.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/10/19 12:48, Jianyong Wu wrote:
> +	ret = kvm_arch_ptp_init();
> +	if (!ret)
> +		return -EOPNOTSUPP;

This should be "if (ret)".

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
