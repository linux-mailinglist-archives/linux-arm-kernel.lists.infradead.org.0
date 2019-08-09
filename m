Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6574B87E6A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 17:47:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K+M3aqax5Jhwnwv9Q1a9Czhrsa9GVr/+WV9g07UrYT0=; b=J515CIolr18J3z
	tW9r9pY3d81luXUdGVFO0XeFDsuBAmAQ1nSoGS3S1EULXTqo+e9ussIGbCBHuCkzdmvHhX/jtvHGy
	WcxJYH2IKA/5WkWUSoUGSLB3O2cO5MN7dkf88Voy2OtMdK2+/OfZwSQr90qaUI/59ExR3UbOhyBCt
	aoPF0ZYtkacttvNRfFNbJFN1SfvAW2lPWuS98yfdvx8fnMxHHhJFyHo4GSv3CWm5CBm2M7ZBuDpUh
	bJKksnkwIi2Ti9qqENoVQlRYLN9E/Udqj+wMmLHfWbIvhbV7knD5LXtvDRMIx/RIuB3zyuD0cFboc
	wtC5mLpdOrc3G9OySSvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw76x-0007BE-Sm; Fri, 09 Aug 2019 15:47:23 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw76m-0007An-Md
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 15:47:15 +0000
Received: by mail-wr1-f68.google.com with SMTP id r3so4936291wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 08:47:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=//yT3qJ8WuM03AEopdit51IEjFSTwNzla/34blwGVms=;
 b=WYkUZgqR0wbeegDtNugqUlbVroIh4l8UKN0wCefGLEDZEW1kyhtQBsf9Wqmb47SQyM
 I/5hDwssZsLB6BHwk04pg84M8mXnOCVCmW7kKnMRDPHFEsqc6dROqhXAwmfcHKV64Ktk
 UUIa9c1HdwBUxE5qdjEQTxxpLkPuxZWPe1x7wbbCMq1fwav0iPaLsmA+T26LXC/Q/7jc
 6XGAWya8RUYlqzdLrln1NJXqJBFrwX2JDRDOX8nKFqSe6lgaRn7Q8hOj7QqrXyKmrcQW
 t3cmm5zqqbuxLNJO4vYLR7nMKYvmuTRmcHi6gXIDZJCO7jHTFPb7RBM7NcHSXa6Gfq1n
 Mggw==
X-Gm-Message-State: APjAAAUKY7z0p2MUxI8SfIeG6agb4XQ/3UJv6TD61RbrwJActbFhBqoy
 Tt5UYy7h9574F6eozVC/3Mje5Q==
X-Google-Smtp-Source: APXvYqwMa058GcHnbYlQie7XSJJGnWJhLkCr/dR0jJdaNszGDMBL8D3HgdiIM/Wds/e4MYbYyG3u/w==
X-Received: by 2002:adf:dd0f:: with SMTP id a15mr7416971wrm.265.1565365630847; 
 Fri, 09 Aug 2019 08:47:10 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:9418:b1e8:9e8b:8c2f?
 ([2001:b07:6468:f312:9418:b1e8:9e8b:8c2f])
 by smtp.gmail.com with ESMTPSA id w13sm19709449wre.44.2019.08.09.08.47.09
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 09 Aug 2019 08:47:10 -0700 (PDT)
Subject: Re: [GIT PULL] KVM/arm updates for 5.3-rc4
To: Marc Zyngier <maz@kernel.org>, =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?=
 <rkrcmar@redhat.com>
References: <20190809074832.13283-1-maz@kernel.org>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <9a6b90f4-7583-e002-76ba-a54525879469@redhat.com>
Date: Fri, 9 Aug 2019 17:47:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190809074832.13283-1-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_084712_735980_2E2CB0A9 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Alexandru Elisei <alexandru.elisei@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/08/19 09:48, Marc Zyngier wrote:
>   git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-fixes-for-5.3
>   git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-fixes-for-5.3-2

Pulled both.  Thank you for including the lore link to the 5.3-rc3 pull
request.

Paolo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
