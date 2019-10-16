Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE3FD8925
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 09:14:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xY2Z8I2mjV+jVRZj9vm/8Bi6dz0+d+xWuc58Rgkb6F0=; b=YBbSNVVNH4fkv8
	dqGmT0/tBEb6YRerxO7a2PlbikXFmuU+mnCBdZgYMAzQZ9bHjPEjqV/bc6wDRzYFqEY/FEZerLFdl
	XmoB4KYtZ+KyI20fV/9so5hXcZcIv2RUYOVCx7af8EWkTFtwwLO8drEE3bwV4lQsf+P+122yx58uc
	ehrZcqhHHyueRNtvEPwmNfCvzpPI+MWZCsb4SdzzA9mWPNhC+F80iQue0DUakOSUrSpxtlpjmg28D
	Dekf+YUN7qzVMNpe9hZdYkjd9+bOh6T9EZ5BtXn7NO6P7HrKEP1985gWsStzd7KdFV2zCPCeNc9Ot
	Ui006auPDW32AJndMp4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKdVa-00045s-3g; Wed, 16 Oct 2019 07:14:10 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKdVM-00044o-TA
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 07:13:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571210034;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=i+nkQRyeopKoQt4du7dFN9BRIgBaHV958j8ZBKBE5e0=;
 b=PZ28/tAVvc4kx+BRxIX48eF0ZAhMVbflOSPOLDQR8ZvdRVhY206r2XIjGQAJxQFfoV3RMW
 csf706AMzQAz4DDDaY/LO0rUt0uOdRbf81OQoiG4FfOE0UKMBT6sEGtsMKEPi7LmoQD8jO
 O+Ia+6FT0P/bvorkj5uy2vfarUl1its=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-114-Us_V_8tgP3CGh-jXtGJu6A-1; Wed, 16 Oct 2019 03:13:53 -0400
Received: by mail-wr1-f72.google.com with SMTP id w2so11354332wrn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 00:13:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2Puk2gzKjg2U5mW3uARabrgwbGmI43WYHISWUlwSLVQ=;
 b=uIr+apv0sIpTOepGvq/66xBPIdUsH0IumjDRph65E80daUqhUP2zbxRUi/ZlT2ZzdV
 fBz/XcA+Zubn3/e4Z23BlUZqUA2lwtX4dfTTr20LKLhjRdGEQO4GzlEPib7pTeJGIzgW
 Qn0nRHqKrnYU48HvJuP+N/RLWZH6bA6/pHkdM3fwbjC+N6HfsvlFzepFJNFkqUfRCCqE
 apQoBkyuWAx7oklnXY1MmZ1i4VL+4megrvQ1LET5g8u5fuJOSWtqKiojAKzPTSx9Zgpd
 GaWsDgwUvG0OWiiIW7J59zJZgYSZwwkOr51BfbbKhDtnZdW+bpptrljR849GzgNSewEX
 ltOQ==
X-Gm-Message-State: APjAAAV0R67DusKt9LrRztV3BQfaMSlSmCogOcWwCmvdoiicl3ZHuyzV
 r3YpSmI5xhVGWAvltDyM5d5TxJEzKRXAqa39c841V4E5dh1KnZO/d8V2SeLww0RSG9HatkFzhBR
 lp3G8VHRaKh0eKDwtv+aBGaGB2m3FonSJMt8=
X-Received: by 2002:a1c:6709:: with SMTP id b9mr2164399wmc.14.1571210031944;
 Wed, 16 Oct 2019 00:13:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzil7ngX2+rV1FuqUIzc7TJZOMSmcjqUkdazl9Cfq2UEQrrOgM1lpUEgLCAkoYOX3c/5g590A==
X-Received: by 2002:a1c:6709:: with SMTP id b9mr2164227wmc.14.1571210029679;
 Wed, 16 Oct 2019 00:13:49 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:ddc7:c53c:581a:7f3e?
 ([2001:b07:6468:f312:ddc7:c53c:581a:7f3e])
 by smtp.gmail.com with ESMTPSA id b15sm1429843wmb.28.2019.10.16.00.13.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 16 Oct 2019 00:13:49 -0700 (PDT)
Subject: Re: [PATCH v5 5/6] ptp: arm64: Enable ptp_kvm for arm64
From: Paolo Bonzini <pbonzini@redhat.com>
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
 <6e9bfd40-4715-74b3-b5d4-fc49329bed24@redhat.com>
Message-ID: <140551c1-b56d-0942-58b3-61a1f5331e83@redhat.com>
Date: Wed, 16 Oct 2019 09:13:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <6e9bfd40-4715-74b3-b5d4-fc49329bed24@redhat.com>
Content-Language: en-US
X-MC-Unique: Us_V_8tgP3CGh-jXtGJu6A-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_001357_018149_BEA63BAA 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
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

On 16/10/19 09:10, Paolo Bonzini wrote:
> On 16/10/19 05:52, Jianyong Wu (Arm Technology China) wrote:
>> This func used only by kvm_arch_ptp_get_clock and nothing to do with
>> kvm_arch_ptp_get_clock_fn. Also it can be merged into
>> kvm_arch_ptp_get_clock.
>>
> 
> Your patches also have no user for kvm_arch_ptp_get_clock, so you can
> remove it.

Nevermind.  I misread patch 2.  However, to remove the confusion, can
you rename kvm_arch_ptp_get_clock_fn to kvm_arch_ptp_get_crosststamp?

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
