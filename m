Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C2A8229D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 18:41:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:In-reply-to:
	Message-ID:Subject:To:References:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WFDMxqgpyQASynKvRUKyAR/5s1Gbr7gFpvmjJ6CrJXs=; b=fR8d8wIqmzDi4A
	ttsQaLUcQRIMcPsEB6+dHEwZYFAdN6nJ8ZGH7nyVc6TBeFh/r8uwJTaj4WT110GVo6Maa4uUVpgqE
	g3cHpnp40LRgn+xn2xnjeNsxAGOjJyP1Q3fdvWAWU9sCk8l6kjxG9OGoHP2/BlNN0DsUhTjKZ+GG/
	XMzfleKnE3EGvow4ZpGzzrVqUXt5eeN7A96yPbY1PEkoCTVPGy7oWrNeVj9YfQYm/k1yhY7wHp18b
	b+LR5vXnIxT+hR8XEGXoUhGgCYJ8uLvcq0UC4oXnhkOY3vEIJHk8sTL3BdSmZK5+QQ2wtBQdR2bTA
	sdMpoFVG25xmZZgW1Jyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hug2v-0002bw-G5; Mon, 05 Aug 2019 16:41:17 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hug2h-0002bE-Qj
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 16:41:05 +0000
Received: by mail-wr1-x441.google.com with SMTP id n4so85156449wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 09:41:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:references:user-agent:to:cc:subject:message-id:in-reply-to
 :date:mime-version;
 bh=ABajkI5eExlI/xSitmeiji8gDOSYLzGBroq8lVBwkdg=;
 b=Jf1TsCUn3vg9vZIttQpRDxQyLLdSkih/m9y3kA3yWVwK1tHBcluvzb64DtQ25oH1/V
 xc+QogvPb9pckGM5vfsy43/UEaWPZWupWkE5UPXHzZT5A7/7Ma3dw/KrHAyWf+SIQ5pr
 Dcvq5iH0eSbCNiujtHHwUJZ240xv7Qi/eds7T8oztvpIBx2XrJ5va7rgiLI/SzDbk43Q
 Z9ORvjpxuJo5BgjdcSStKB849ChK0G8vPO2yzLZGaqzz0g6WR36X48+GBvCQz9Tay6xs
 czQE6+3WjSb7nz9cH1JuMb4iiT+97q5c2zuu/BUbeRroBVjCzNGInLsmtjQPkR05iWcK
 8OZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:references:user-agent:to:cc:subject
 :message-id:in-reply-to:date:mime-version;
 bh=ABajkI5eExlI/xSitmeiji8gDOSYLzGBroq8lVBwkdg=;
 b=jAOhKc5Qf2o4INrIfS3eVd7FF6gMHw1KsL1v1hNmdeIC19vHw987Q95yKP20BKyLHn
 viu0zGbaMqYklWbfOBbXExHemf5/TVMeNF8ypnXaIUIbly78sVDFiNpKEsvs2KCvI3FJ
 ryttGDLrhbUskZrQ7ArLyRgi5pIJOJ8GIpAAtobfTNEsiEMMqssCnO3hkoLmU9MLw9EZ
 Jh2hzsRnXpfSkicxYtPO9C2nFtt2QMmuXlUkbhT3Ey2VDbZJhdN+THEhihq9cFaDSenO
 8yG5YEZpy46ycc9UF+QxPcBVXuvrSV9vJcD3quW1UuybNp+GmF6JzsZ0/Sgh61dyqZxj
 zZeA==
X-Gm-Message-State: APjAAAV1K61trwnEgB12Ayd7BZ2EKXZXYf1bxdivCVhHQ7NDI8OMqR+E
 m87QIPKkoxLnh+JuWn2tnko=
X-Google-Smtp-Source: APXvYqz/Y6nmSCAzfJUUyNSVsxAyHbqu5I0RQoLKZMj78OsAAfjqWRVGFPKFfORnGY8ls5vKuqHU6Q==
X-Received: by 2002:adf:f050:: with SMTP id t16mr791943wro.99.1565023259727;
 Mon, 05 Aug 2019 09:40:59 -0700 (PDT)
Received: from ptitpuce ([2a01:e35:8b6a:1220:5461:8d4f:b809:4bf8])
 by smtp.gmail.com with ESMTPSA id i12sm99839220wrx.61.2019.08.05.09.40.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 09:40:59 -0700 (PDT)
From: Christophe de Dinechin <christophe.de.dinechin@gmail.com>
X-Google-Original-From: Christophe de Dinechin <christophe@dinechin.org>
References: <20190802145017.42543-1-steven.price@arm.com>
 <20190802145017.42543-2-steven.price@arm.com>
User-agent: mu4e 1.3.2; emacs 26.2
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH 1/9] KVM: arm64: Document PV-time interface
Message-ID: <m1mugnmv0x.fsf@dinechin.org>
In-reply-to: <20190802145017.42543-2-steven.price@arm.com>
Date: Mon, 05 Aug 2019 18:40:54 +0200
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_094103_872166_BC5AB65F 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christophe.de.dinechin[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kvm@vger.kernel.org, Radim =?utf-8?B?S3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, linux-doc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Marc Zyngier <maz@kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Steven Price writes:

> Introduce a paravirtualization interface for KVM/arm64 based on the
> "Arm Paravirtualized Time for Arm-Base Systems" specification DEN 0057A.
>
> This only adds the details about "Stolen Time" as the details of "Live
> Physical Time" have not been fully agreed.
>
[...]

> +
> +Stolen Time
> +-----------
> +
> +The structure pointed to by the PV_TIME_ST hypercall is as follows:
> +
> +  Field       | Byte Length | Byte Offset | Description
> +  ----------- | ----------- | ----------- | --------------------------
> +  Revision    |      4      |      0      | Must be 0 for version 0.1
> +  Attributes  |      4      |      4      | Must be 0
> +  Stolen time |      8      |      8      | Stolen time in unsigned
> +              |             |             | nanoseconds indicating how
> +              |             |             | much time this VCPU thread
> +              |             |             | was involuntarily not
> +              |             |             | running on a physical CPU.

I know very little about the topic, but I don't understand how the spec
as proposed allows an accurate reading of the relation between physical
time and stolen time simultaneously. In other words, could you draw
Figure 1 of the spec from within the guest? Or is it a non-objective?

For example, if you read the stolen time before you read CNTVCT_EL0,
isn't it possible for a lengthy event like a migration to occur between
the two reads, causing the stolen time to be obsolete and off by seconds?

--
Cheers,
Christophe de Dinechin (IRC c3d)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
