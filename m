Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F20AF025
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 19:09:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zT40FOTycIIDYl5Bd9Jjd1Ifc2osRMrmzDDvOU2Nyx0=; b=VvAtjuusBS0iQP
	34KDokjQOuVrFi8l64RyCtparXJjW1sw4AwtWlWhMBRliJ5LWXEMcicNkxF10a64SObOXgzPvCZ+y
	skZ8gVJXajcLxTk+3XbrSetM4s8VisGLRSwG6WXyf6YsT666/wf01iWAmQamvy2yLvDJAh+BrQzV1
	heSLzVGYVFAoPed+0NmfX3p4/7JkwThdm4Fe553I0u4Hl57dZD0fjjFraMiYFBJUwDAhI/O6yNLAr
	Rgm8QURAC93Jicb2nMOAw/ze9cUrFr9B8iEyhWvsMoMx9j8DQnwhHhtWJfsrbQPVaDFAFlDJ7u3VC
	lZaIsOlI22yJXTsA/7kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7je5-0002EY-1K; Tue, 10 Sep 2019 17:09:37 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7jds-0002Dt-UR
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 17:09:26 +0000
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1466089ACA
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 17:09:24 +0000 (UTC)
Received: by mail-wm1-f71.google.com with SMTP id d10so139912wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 10:09:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=N6OgVWm3LipI6S2dhNRtI34S9LNNCSkrvYxcJwqfZsI=;
 b=ocPG85yVGRlsjDi5/vw/z4jEd3rUsqPxchKFqKCivCldwjuMPa0s+HszrPGz24eGFS
 9rchh4tsNgyt5OjSn+dgNsPvYJcRmfmprvNzyA99M7rZrUtkuhXmlUckPZO1G4jBvmh6
 GGgP1ffuh4F9O5HbSr42za4SjJRwK9EkbfbyI1Yk2D3Zh33uxrHjX9lJSru27BDelAAB
 1qgBmKhogxGG2vgQVI6InMNunK6ZBbDwFdVdw/gE3uM6t5B4Ph4Ne9SABcoCGocDVDS0
 fFUMyn9bPAbTIpoVDIXNjyZUULyVYmOYqrtgA7YUoIhXKhO/5JQQl1+HWQu4gKC9kugf
 mp+A==
X-Gm-Message-State: APjAAAXHcwmpyk2yzC4dckqpALh0SrjYuwF/JAjg87TKrD8xfS6+9Vcj
 ph5eJ6YmSWBtIS+PgLlaWPHhfcTxWI2gpI4fhaUBR31vQsmSc37PyN58veqs1DtbY414vbIDBeN
 2R8gWckAfnlcyj7I+abun52R1kFh7/OeMLeo=
X-Received: by 2002:a7b:c922:: with SMTP id h2mr436531wml.63.1568135362534;
 Tue, 10 Sep 2019 10:09:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxYTqc0EPZJui9RRlRkbko3iJmJuc0qI4AmciigJIrk+NreoBnAJ7W6d/VwZU9kBdxQPOnWqg==
X-Received: by 2002:a7b:c922:: with SMTP id h2mr436510wml.63.1568135362307;
 Tue, 10 Sep 2019 10:09:22 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:1435:25df:c911:3338?
 ([2001:b07:6468:f312:1435:25df:c911:3338])
 by smtp.gmail.com with ESMTPSA id q25sm383779wmq.27.2019.09.10.10.09.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Sep 2019 10:09:21 -0700 (PDT)
Subject: Re: [PATCH 00/17] KVM/arm updates for 5.4
To: Marc Zyngier <maz@kernel.org>, =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?=
 <rkrcmar@redhat.com>
References: <20190909134807.27978-1-maz@kernel.org>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <3d822288-2517-0667-dfad-45f77a918738@redhat.com>
Date: Tue, 10 Sep 2019 19:09:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190909134807.27978-1-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_100925_001071_E106F0B7 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Andre Przywara <andre.przywara@arm.com>, Eric Auger <eric.auger@redhat.com>,
 James Morse <james.morse@arm.com>, Zenghui Yu <yuzenghui@huawei.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/09/19 15:47, Marc Zyngier wrote:
>   git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-5.4

Pulled, thanks.

Paolo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
