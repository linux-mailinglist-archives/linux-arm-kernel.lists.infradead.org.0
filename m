Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D87DBCA16
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 16:20:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f7KOzD/DdEC5mb5uVXJAtmHOZX8ZngLjPxukaRBxgyg=; b=do9mQS1809nr62
	bxoetKiVzNU3LCzOgY3TVb5UIlWX3hjj5+qD8ADjeXoV1kF7jPTNHqemmZyiagwBlGK2iB7+Q46Ys
	mith8Yd4qOlRtv4uHGD9uYMRIqswXauNuXaewKII/Yz484caePJPU2Sf3i0UgSMLZ1NZ79d3SAwJt
	a6qHiJj21/X6//HL21XyGuZVw9HbeZomDpcq8uWlst5i+kSkxJw5eJMkdwBMjv7FJq6L76IT0gPK8
	HQ0oB4YJ/4WgQq1Z93ZayaiBGxunuGTOU554hoTbKP+z6lO+FCxJ1Z3sannbc7NCeRNO5JAR++T4p
	fvgkpGDF32sq+Dj8LhDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iClgH-0005Rq-Ul; Tue, 24 Sep 2019 14:20:41 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iClfy-0005QK-Aw
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 14:20:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1569334820;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=L4qybsnzerq1m1MESjNMamZC3PQ0Zg5C9AXa25MzaeU=;
 b=S5hzl7zjPCC4xdxYATZsJFUeD5SwePMdNYoYSZ4DWF8ZQjpDShr8tbUBHs1przxCZKDJG/
 66cbqpUbE9CqRlYpqZ2rid1SeDwxyAYITH9tUQ+XjsyCjw/rHqAvtkyFL3J76JvVaOrGiq
 9653Eu+f+Pn18ZqIIi5JGer7yQOK/d4=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-68-uOio7rzjOGeB8BRAOgKvPw-1; Tue, 24 Sep 2019 10:20:18 -0400
Received: by mail-wm1-f71.google.com with SMTP id 190so94211wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 07:20:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sEyk6USuWuluG4dEpZivpllBkGUrYY+s2EB287d40EY=;
 b=gLypt/shV8bHuKpJAH2c2CLD+GGwrJrRdwzq1iodRCRapGwv9rEZsjpmOZomVfgbB7
 aJL8NNSyOBwudyG6OYO80vRsfs2xmBtCh0AZ4tO1HJ9rlveqv2VO8pMZzgUw+jJcw/Ui
 pebahYqdjQZzhtrl7qFfkDMdop/7easE3RSkuk3MEiSy1iwb52/btnpsUEqMqxIA4VzY
 TJF8IGLoKARNTi7gxcm5DKdaFFySGXOA/tZ+RC1HIitPw3MwjBqzcDlZJJYXQ/q/DdMN
 D182qhTKh7cxCf8UK3UF/IZNPNN/3DGQSyNqpsBnVDMWYIO5WPxSu1jNqD5ANf8Ivres
 2h2Q==
X-Gm-Message-State: APjAAAXLABn8xkA6VqTw54cqSTyUiUvyuhb/ZXIf4ii4frDXrpsF1z2P
 NVkoutDYj3/jWc+3PObcE06yTh4uBvT0E3zKindzt+4V/DpNq0LDJRhqOSqkdHRVhe2PHQATFg5
 eIqEvK0hIzFdSXNsX3g2WgSE0VitSjVDtJ+A=
X-Received: by 2002:a5d:69c7:: with SMTP id s7mr2469145wrw.295.1569334817102; 
 Tue, 24 Sep 2019 07:20:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx4LF7gV2lQhhn+yrMAt/0oOF5J6XmW/oOSZQJqYKd8ZZoV90deJE9Ub18ZwCF1a3Rr5w2N/g==
X-Received: by 2002:a5d:69c7:: with SMTP id s7mr2469108wrw.295.1569334816822; 
 Tue, 24 Sep 2019 07:20:16 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:9520:22e6:6416:5c36?
 ([2001:b07:6468:f312:9520:22e6:6416:5c36])
 by smtp.gmail.com with ESMTPSA id h125sm183749wmf.31.2019.09.24.07.20.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Sep 2019 07:20:15 -0700 (PDT)
Subject: Re: [RFC PATCH v3 4/6] psci: Add hvc call service for ptp_kvm.
To: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 "maz@kernel.org" <maz@kernel.org>,
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
 <HE1PR0801MB1676A9D4A58118144F5C7B54F4850@HE1PR0801MB1676.eurprd08.prod.outlook.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <06264d8a-b9c0-5f19-db2c-6190976a2a05@redhat.com>
Date: Tue, 24 Sep 2019 16:20:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <HE1PR0801MB1676A9D4A58118144F5C7B54F4850@HE1PR0801MB1676.eurprd08.prod.outlook.com>
Content-Language: en-US
X-MC-Unique: uOio7rzjOGeB8BRAOgKvPw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_072022_450306_98F09442 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On 23/09/19 06:57, Jianyong Wu (Arm Technology China) wrote:
>> On 19/09/19 11:46, Jianyong Wu (Arm Technology China) wrote:
>>>> On 18/09/19 11:57, Jianyong Wu (Arm Technology China) wrote:
>>>>> Paolo Bonzini wrote:
>>>>>> This is not Y2038-safe.  Please use ktime_get_real_ts64 instead,
>>>>>> and split the 64-bit seconds value between val[0] and val[1].
>>>
>>> Val[] should be long not u32 I think, so in arm64 I can avoid that
>>> Y2038_safe, but also need rewrite for arm32.
>>
>> I don't think there's anything inherently wrong with u32 val[], and as you
>> notice it lets you reuse code between arm and arm64.  It's up to you and
>> Marc to decide.
>>
> To compatible 32-bit, Integrates second value and nanosecond value as a nanosecond value then split it into val[0] and val[1] and split cycle value into val[2] and val[3],
>  In this way, time will overflow at Y2262.
> WDYT?

So if I understand correctly you'd multiply by 10^9 (or better shift by
30) the nanoseconds.

That works, but why not provide 5 output registers?  Alternatively, take
an address as input and write there.

Finally, on x86 we added an argument for the CLOCK_* that is being read
(currently only CLOCK_REALTIME, but having room for extensibility in the
API is always nice).

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
