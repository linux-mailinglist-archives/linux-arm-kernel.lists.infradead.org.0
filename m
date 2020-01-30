Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7454114DFB1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 18:13:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7V5InTsBVq6h/k4NfCuG731Un6RPisQDuozcsVNDZRs=; b=SOccx4W2mZLOgz
	1UCr2guS6cb7Qq3pWIpJc7zo0Zgln7JjSeoELgmml7oaGXIV8yQPO8W1KOAzJL6B1KAXL3fDQNbXz
	Drfox+lWECHgEaoTml4Hv2TyDJqdpI7OxU30tcgcPAhZ5x5u6R3wxuidrDrzhP2f1UNkCWMUjUJqW
	1V8WYIY0d/qPfBIvN8t2keOedNTJNxwECaL3AyHGyh5H30JXwOaLdxjfIyELThsTe2TbZCG0WoEsb
	gK904y65ib2UgEyt2E0hXJKwWfApJZSsBZLsUNKlcOguMzD36xE95Db9FwG0nzsz0tlkPbY2GQIY1
	Ek1LNiSpFVYAwxRVi+AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixDNx-0004qC-BQ; Thu, 30 Jan 2020 17:13:45 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixDNo-0004pQ-Ej
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 17:13:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580404414;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=H4XSFE0E4Gksgq4colGF+ekKd22PBCuH+3lUMYjeKtA=;
 b=ZQ4VJ6LNw3U1NDhNdO3MpnfgZRaKX+G9dG4nnFmXc/W2oXfJLR5kGn+b2/9QnP693aFDP5
 SXQU+m0bMjkz+H82tuW4PbLUtX9+oxMPkCuJxtjMd1c+BDhdm4i2q+FOLuAeeqjDiECW+o
 HaEcJUFW4nyOmKArSBBSJzuEpFK+v8g=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-67-yHSJH82MNyy72BbsC8CByQ-1; Thu, 30 Jan 2020 12:13:30 -0500
Received: by mail-wr1-f72.google.com with SMTP id t3so1994084wrm.23
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Jan 2020 09:13:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=H4XSFE0E4Gksgq4colGF+ekKd22PBCuH+3lUMYjeKtA=;
 b=EoJXd+HJMz3ekqJ08noJAHmltmm2dIIBRz84lmzAK7iQXz6W2WP+pV0lamfFnkIUWY
 XRlYWR5pcUuzd5yeSXehoAommKgb/fZdPZV+JQabo4FJuaWfRtChQ83D9Mdk+DCubFic
 7BMC3pIr4QPuosArkfWN/su7p2qqmxoqdMnmlRsbAF6l0n1OtYwCJpW9QCQeywOZOXSo
 ORCM2xLBJkAec3XGR6OeeRs6YI4qEFZkRbSNtkQDzRPehQUPjPgux5sY0QrsUKKCioJr
 mKr+kgviJ2nuLnqohYRF5O5dArlVmcim/wY1uhqmEXr6wdYCx4W5gnCZ5gQUYTK157vg
 8khQ==
X-Gm-Message-State: APjAAAXf1Gp8IhLYHjHcQNzxCCWfdtslGozjj+gHzlYtykvfq/ZSMkXN
 Q4FIrYS7kq/kiSi419wD28HLHCD+ishzpA8p7N3qJp6tz82V/Uf6mDQYmsGl3eDtBvEimg0GVwA
 PR7sjFxfH+SYMXMYV39YB1BTvZ4Fapvywdns=
X-Received: by 2002:a5d:5273:: with SMTP id l19mr7085715wrc.175.1580404409498; 
 Thu, 30 Jan 2020 09:13:29 -0800 (PST)
X-Google-Smtp-Source: APXvYqymVD4j3W000trrAp+yiZYezamOlUuLI2vEHpmo9N7lQFe0NfMAmfVgtniQBd5Sv2KEKg1xxw==
X-Received: by 2002:a5d:5273:: with SMTP id l19mr7085702wrc.175.1580404409282; 
 Thu, 30 Jan 2020 09:13:29 -0800 (PST)
Received: from [10.200.153.153] ([213.175.37.12])
 by smtp.gmail.com with ESMTPSA id i2sm7353450wmb.28.2020.01.30.09.13.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Jan 2020 09:13:28 -0800 (PST)
Subject: Re: [GIT PULL 00/23] KVM/arm updates for 5.6
To: Marc Zyngier <maz@kernel.org>
References: <20200130132558.10201-1-maz@kernel.org>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <b69fd046-1076-c197-7147-bd65f40ea9df@redhat.com>
Date: Thu, 30 Jan 2020 18:13:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20200130132558.10201-1-maz@kernel.org>
Content-Language: en-US
X-MC-Unique: yHSJH82MNyy72BbsC8CByQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_091336_566738_467609C0 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Gavin Shan <gshan@redhat.com>,
 Beata Michalska <beata.michalska@linaro.org>, kvm@vger.kernel.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 YueHaibing <yuehaibing@huawei.com>, Steven Price <steven.price@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Haibin Wang <wanghaibin.wang@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Andrew Jones <drjones@redhat.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Shannon Zhao <shannon.zhao@linux.alibaba.com>,
 Eric Auger <eric.auger@redhat.com>, Russell King <rmk+kernel@armlinux.org.uk>,
 Mark Brown <broonie@kernel.org>, Alexandru Elisei <alexandru.elisei@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/01/20 14:25, Marc Zyngier wrote:
>   git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-5.6

Pulled, thanks!

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
