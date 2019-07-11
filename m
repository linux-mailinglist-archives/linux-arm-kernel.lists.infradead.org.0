Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB55065810
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 15:46:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AnRNrKf0g9cOZcRviIx7F5uRkExsQ+qVve2ZlaGgYuI=; b=Jni1gqaJlcrdoQ
	jNZCx1JtYMMQHhQuJpOnj4CVydtxOXC4kgUkQz10hXW6NM4ppzuoCJJkn3EahNDSsUYU/8ZzHihPd
	L1qOtIgAr8x1oZiVxeqyjSOcAOn2wkVg+WoAbqBtL9uoQz2Z+h14GfAQDlh87m3MTUctveY8amXlx
	wxPE7kVU8f8MbO8gAQgNXqB7dlIua0qR+A3ysvaQYSamnWmMDwcJCatcGrTfGoha7nKuB/unyTX9Z
	Ik3c9e4ow1WRCB/mmlv+uzf6LtXv64pu9oeOwla2pIaG+aujp8RgscHUwXH5rpDt5lIt9psn20+Zi
	+UoxGlRuG+u2ljWTKRCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlZPC-0001jO-JV; Thu, 11 Jul 2019 13:46:38 +0000
Received: from mail-wr1-f42.google.com ([209.85.221.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlZOy-0001it-CS
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 13:46:25 +0000
Received: by mail-wr1-f42.google.com with SMTP id n9so6393200wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 06:46:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FnSXGXReWdj1dwt4PqYkheiL50PJemd4VIlhtbzAQt8=;
 b=I+vt1gCXn5ZloXyah0/kPA3No0Urs8IGKj76JkLMwAWX8Chy0ND7AZ2thplZySe3m7
 zGUM4o+ac9c/c0HveSsXSb1plgVeldBCPAmYrNCHyXlm2erCbzZhCpvsbfPmcwiQZHfu
 fIJUvFh85XctfZv5i1Pd5Zab4YtKSqTkBTFhFuoNeWPRMbdAGnhbpF0z/tdqq/uVfKbi
 hPjkZo2m/9PCaG4d+jw33CvlUK2MN69DZSVxsuNlB8U1B3M78tw4Y9ZwtF3yy/7TKN9K
 dzKkCKqt4RUuuMQzA7oTk3fosBizdW7Ed3coFCBBQpzQU3UF9/kY+HuZGgrg+GljmL7W
 7lAA==
X-Gm-Message-State: APjAAAXw/Rm5M/SqHmNzgU41ZWUySEEVFgNZQTNExsy6asqaUCSkYuaJ
 +3zi/uoYxeWOpeXIej0VrZ/y5PtO1ono3Q==
X-Google-Smtp-Source: APXvYqyShV9fbckDIWGQ0EkgfblduUbng9/MP66ZdhXZaEdrkN9dkmEju62XgU7X98NYyExpOgwWZA==
X-Received: by 2002:adf:e843:: with SMTP id d3mr5517125wrn.249.1562852421455; 
 Thu, 11 Jul 2019 06:40:21 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:d066:6881:ec69:75ab?
 ([2001:b07:6468:f312:d066:6881:ec69:75ab])
 by smtp.gmail.com with ESMTPSA id e3sm5300954wrt.93.2019.07.11.06.40.19
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 06:40:20 -0700 (PDT)
Subject: Re: [GIT PULL] KVM/arm updates for Linux 5.3
To: Marc Zyngier <marc.zyngier@arm.com>, =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?=
 <rkrcmar@redhat.com>
References: <20190709122507.214494-1-marc.zyngier@arm.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <7f0bdfc0-d450-5466-ba0f-34c52d872e91@redhat.com>
Date: Thu, 11 Jul 2019 15:40:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190709122507.214494-1-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_064624_425481_B64F7E90 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 Julien Thierry <julien.thierry@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Steven Price <steven.price@arm.com>,
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/07/19 14:24, Marc Zyngier wrote:
>   git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvm-arm-for-5.3

Pulled, thanks!

Paolo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
