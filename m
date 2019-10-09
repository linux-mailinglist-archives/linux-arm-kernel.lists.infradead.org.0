Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 702FAD074B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 08:36:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EEKEN/KNCWAwhBEOE7WhfbP6gJZMozrZ5AuWgBS2P5A=; b=IKdwzAKmUejZTY
	Kd3y8GG4C3JgHR0CCSj+pcd+rmPIVMhdV/MB0S/0R0OQ7cbSCLV5eW4YaG4wDkhpsDjWYawhvPVUd
	cQ0LiEea4xVi5LdQu/LZVd8/XHB5x5L+YC9soELP+8nYEfenwJH7+u3JnqY1bVKr9As5d8Drn8z1W
	9VKAKxkQkMUuQrRH+qa0YOKPxT0izezWvjPfCzbrK6oz4e9qt7l/ZuoE8D7pxLupHqq02VVxtRrod
	hZyaM6DaYEHpSO8hkQXKqMjsTO7ZXNyFI0D6QEG0X2lNcUeRspD8gaCEOMo7nFZgr+JxMvy+gLXa2
	qbxu/WVgLlBXSrft4GvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI5a6-0005XB-AD; Wed, 09 Oct 2019 06:36:18 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI5a0-0005W9-0v
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 06:36:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1570602968;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:openpgp;
 bh=DRp1swJmLGnIlAf7XMxEoZkdOJe88OuGnn8pzjWNfwY=;
 b=N8bQXPn4HettIkUNNDz5xBGXwt7UnT7OEJmLqYnh5tt0pDRRBbOILhIwucIC9yZGWELWEJ
 oNgQt5TgyuFLc9HAr+sbZfFUlFybgs0gbgTnysgGD5KvWsjbEUMNtrB5Y/2rrtCFgUOAyE
 r40LjompiqmFacQLtUwC/zkN5dLT0g4=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-95-wdtFrL4yOdaQxpWy18c0zQ-1; Wed, 09 Oct 2019 02:36:04 -0400
Received: by mail-wr1-f69.google.com with SMTP id j7so624020wrx.14
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 23:36:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DRp1swJmLGnIlAf7XMxEoZkdOJe88OuGnn8pzjWNfwY=;
 b=SmoXSv7ap5Z/c3cg8rGy69mNCX3P54ChtcFZ9Zqp6fNgnCxIcxMPQwtZBJD/oD/nAN
 j8mDv4wsDZI6GZJ6qq9aftXmBi/fgRlmyFIwA9CNdl1oqs8g0IrEUY8Zl2JOaIKQ8Et0
 jfnHBRP0X6da7yrOLCdpKqx9qhci09Yhr5CAxt92G99p0qgBB+5QNHzWEQ4YaDpQAB5D
 IC2X1lueD5I72npuIwKCQhPrTACcl5o4123xRFlkvDdnOFTkVyeiBCFinK8rMsFVa+ky
 PCp0FfclaR8rxv6BeuEYkVU9JdM9uLMyVIOjw5jkzc69Jni9nUPEsaiFTx/Ba7wVS9Bs
 U04Q==
X-Gm-Message-State: APjAAAWocL5wonua3LkzEhzT7xOwsswyOLE4kUC7H3cyNSdGw1ctpVNg
 V1VKrKTC0KBrxCr1R9AEtwzZz8Dx5H3nlbb9FDNQPeLCaZZ7vM764FKXY4ne8/PE/YCTaWjDRgH
 ogfltcFckKKRSm0zepEe2wrQBm/xSmzyn4ag=
X-Received: by 2002:a5d:5610:: with SMTP id l16mr1515939wrv.143.1570602963414; 
 Tue, 08 Oct 2019 23:36:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwIwCawDi6R5bC55JQUaG89aKMEczYrGrPl67xVSkSyIT2j1JE6iE4/baYaPJLh4Q90kl9l8Q==
X-Received: by 2002:a5d:5610:: with SMTP id l16mr1515916wrv.143.1570602963107; 
 Tue, 08 Oct 2019 23:36:03 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:f4b0:55d4:57da:3527?
 ([2001:b07:6468:f312:f4b0:55d4:57da:3527])
 by smtp.gmail.com with ESMTPSA id m7sm993787wrv.40.2019.10.08.23.36.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Oct 2019 23:36:02 -0700 (PDT)
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
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <1cc145ca-1af2-d46f-d530-0ae434005f0b@redhat.com>
Date: Wed, 9 Oct 2019 08:36:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <HE1PR0801MB1676115C248E6DF09F9DD5A6F4950@HE1PR0801MB1676.eurprd08.prod.outlook.com>
Content-Language: en-US
X-MC-Unique: wdtFrL4yOdaQxpWy18c0zQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_233612_149098_A4F88253 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 09/10/19 07:21, Jianyong Wu (Arm Technology China) wrote:
> As ptp_kvm clock has fixed to arm arch system counter in patch set
> v4, we need check if the current clocksource is system counter when
> return clock cycle in host, so a helper needed to return the current
> clocksource. Could I add this helper in next patch set?

You don't need a helper.  You need to return the ARM arch counter
clocksource in the struct system_counterval_t that you return.
get_device_system_crosststamp will then check that the clocksource
matches the active one.

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
