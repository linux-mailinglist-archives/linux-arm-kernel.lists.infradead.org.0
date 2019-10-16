Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21130D890F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 09:10:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HcibmKKx2tdjCkQJx3jNrLB7mjt2njEIk3av1KGsuhc=; b=ZzCTmso7h4dsop
	ISCexd+vLQggOO2TQyOqeJCuQC+/OIKCfQANJBtngo0hnesW0mXKV8SjEkAMgCyi3GpPAMOmKkwXL
	x61sED0P09cmp76AQXzm4xtl3qMf/Vk5xFALJK/7gXKzqW6MO69og8r9RCHfWqCg3jr/JZ0sP8RIv
	DAZbhVUTP1v5KeIrUVtK7c+g7iYccZVVkz8MzAxU7bWw4t9ThQqqt5MqZoqbF5F0cY0Y62Wj1yWnN
	I2fCdhQAkEH+VxI4uloM6Fi+kkAObhjuPPHKvOGQQhJ5KmCVDcQZUBZW90NwY22lTThoPdr3N1Gw5
	E+r9bkB9SGFxXB0+sF+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKdSS-0003fq-Aq; Wed, 16 Oct 2019 07:10:56 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKdSF-0003cT-Hn
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 07:10:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571209841;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=atkKBE+OhbQ4pOII4N38Iv93WpWN9YTy8W/dwEibJvo=;
 b=ACxjq5TqXYEs/g4Q87nJBpbK0rfwqbkth7Jqn+8D7tE2KA9hsfgpcBGZx25dpRDXF23XBC
 iXSwsvvieC65Rg9T/klXLiZOmSvZjWHrWxmD7DZ7Df2sDr0KyfqPdrURgTCCErSNNhoc0O
 vHWpYmtllzdfKEzJ2Xc37CHh2c4x1vY=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-19-QDoYh7c9PR-UIt21y-9ruw-1; Wed, 16 Oct 2019 03:10:38 -0400
Received: by mail-wm1-f71.google.com with SMTP id l3so751455wmf.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 00:10:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4KmZ9tmpXlk46xmJUogDKwLZzCFViFGNnmxsywrkhr4=;
 b=HuI49/lusfcf6cq7De/B2MzYfNhLvL9dVmRLWmOabk1MGIThBKYrinX/M+gOe+MRM5
 9L3UK8aE1AWHQ2ctfKcvJk8jLtRVml4FMYGnnxpxEsSd5wfeSFYt6sVgPUmPNdKLxrIS
 VwgsakMEwPDBFUgWYFAdOMuo+vv//8Osj9HW5HhgRDImTkMwLLcwDKI8vEjN8kG5/y9p
 v6fUvZqSKsYdtNmpoBJYrfuBWNuaxdpx/xh0jEWyHEifqZ6hmlvaQfFUtmlk9hnJuucA
 YcToJ3k/n4jiu9/bqW+aNMejBZ9SMA6/8Bp/EHVIxSpM37gAcCymB0XnrOOHiiYoGMuM
 +sqQ==
X-Gm-Message-State: APjAAAVQAhQvwzR31Da32i6P48BXBY0UgI94oY0jCiPS8K3jmPtHyWTV
 qrVSWuZ2DapowU/WSJ01UBA3NpTQqEEs4K/wkJYy2IQqGyu7h0U1C8xc0+Byu3TSJI+zJ8uooxm
 JoouZlm2v492hwnWOjp9WkKjxjLY4KzgfSA8=
X-Received: by 2002:adf:cc8e:: with SMTP id p14mr1344878wrj.301.1571209837020; 
 Wed, 16 Oct 2019 00:10:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyMkepD45un/zag7gKTc+lFp9N0/XMwW6mC1kmyUCBXgrwtYogoeP8y+AmUc8Y9iVF713Y8IQ==
X-Received: by 2002:adf:cc8e:: with SMTP id p14mr1344860wrj.301.1571209836713; 
 Wed, 16 Oct 2019 00:10:36 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:ddc7:c53c:581a:7f3e?
 ([2001:b07:6468:f312:ddc7:c53c:581a:7f3e])
 by smtp.gmail.com with ESMTPSA id z189sm2973051wmc.25.2019.10.16.00.10.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 16 Oct 2019 00:10:36 -0700 (PDT)
Subject: Re: [PATCH v5 5/6] ptp: arm64: Enable ptp_kvm for arm64
To: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 "maz@kernel.org" <maz@kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 Mark Rutland <Mark.Rutland@arm.com>, "will@kernel.org" <will@kernel.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>
References: <20191015104822.13890-1-jianyong.wu@arm.com>
 <20191015104822.13890-6-jianyong.wu@arm.com>
 <da62c327-9402-9a5c-d694-c1a4378822e0@redhat.com>
 <HE1PR0801MB167654440A67AF072E28FFFDF4920@HE1PR0801MB1676.eurprd08.prod.outlook.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <6e9bfd40-4715-74b3-b5d4-fc49329bed24@redhat.com>
Date: Wed, 16 Oct 2019 09:10:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <HE1PR0801MB167654440A67AF072E28FFFDF4920@HE1PR0801MB1676.eurprd08.prod.outlook.com>
Content-Language: en-US
X-MC-Unique: QDoYh7c9PR-UIt21y-9ruw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_001044_221887_DAC27B78 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
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
Cc: "Justin He \(Arm Technology China\)" <Justin.He@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Steve Capper <Steve.Capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>, nd <nd@arm.com>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/10/19 05:52, Jianyong Wu (Arm Technology China) wrote:
> This func used only by kvm_arch_ptp_get_clock and nothing to do with
> kvm_arch_ptp_get_clock_fn. Also it can be merged into
> kvm_arch_ptp_get_clock.
> 

Your patches also have no user for kvm_arch_ptp_get_clock, so you can
remove it.

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
