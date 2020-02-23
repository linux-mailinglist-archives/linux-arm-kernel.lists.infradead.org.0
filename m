Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A601696C0
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 09:12:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oFt/7kMrhnEBIW/cE4R4Ax88OUCA/9iRVXyzphTwDBU=; b=XUQ8B+DvyKXJOv
	mxvIlWXLoyCbn81i2B5/FW6+R1bSqfWRaZfDTKmgkWvW9PLcgeBRsuT6YXyLvTUYivgixSaMH/b5K
	2n71D20fX0GsUrO77bm+6AXORDP/wBeVIZ/ivgMoEll9bGGiut5qTijrV7B9jehgGdOO4mYsKR+IO
	yUOyMvkagfNDj0BE17yhw/MVhX4bVNEdLOk9n8Hb6BTy1IZ77GBxZCl/RS9HrrcAqVq4hFdbeAoRs
	6fnUiPTN1cJKE0ZYXis3os/eZBhaozXa/1d5eQ3YCAHwCZunzXlAoaZJRDGHCLKNZkg+yOCtOvoUj
	14a3QuesHdgjKVwgGlVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5mNV-0008Kp-MU; Sun, 23 Feb 2020 08:12:41 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5mNK-0008Jq-Ab
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 08:12:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582445543;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BwYUjK8HxtbAMJrKBooyAEULF1GvPByjvn4wuyM0RUU=;
 b=D8C1rbA1eYIaxuTmhRiR1Hbgy3BQvZkK/Yq1QxsPG4MyDIPrckWRBbQomt/nprbFUez6wL
 A1VdxEvbUkb19JZV/784FT1xLhNVVuDWYMePyW/3ac4mZmTjq1y8np+fGYjJP1VA4JpARl
 afLqoZ4hWSQZ1fGvIUNUs+SRBqHnizs=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-324-slxDsxMROHyKJxWFjEY7gg-1; Sun, 23 Feb 2020 03:12:22 -0500
X-MC-Unique: slxDsxMROHyKJxWFjEY7gg-1
Received: by mail-wr1-f72.google.com with SMTP id o6so3644478wrp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Feb 2020 00:12:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BwYUjK8HxtbAMJrKBooyAEULF1GvPByjvn4wuyM0RUU=;
 b=Fft/YVybIChH8rinuvA/NtXcxwQmL40ksdQdPYYqfjFQIgUsRSN3tp+tVxCqLSdXwR
 hh0GI5DbU2zLAMVKXHsE+6cvYwONcevS7AU86F1AXTxYsxIL3iIesiSiA2UZQAhp0XEG
 XKRt47dg7fVHvrH+IYOTMxI+4pm64gGZwvqfd4j6LPHWmIvKundMXJ9PL+OiQAz4/5UR
 x3cnvXJnPauSmEQ1pDtDdeKeQI0kycrrBm5zJ7el85HuvBg2F82b5qIGgj8x5z7qrOFn
 j32guZFoa9jGmz63xW3IDm1E5Ph/ez+ksoPQ1EVoDCF+rApDsukmpbI7U3hZ9FZZeen6
 ipqw==
X-Gm-Message-State: APjAAAWx7B46PsbYapBLWKezIMoNIhFrz9rRMKDiDlP5lpPO2dYZGaFL
 C5r3TlFeRnZv/x3yzQpDqJOrvU60gsR4OTLnSV6DA2df6Czql12uXlz3/O+bHGYAzEgfM8ekeTW
 pzNGnv2CED+J+6L6HVZkuQeZYC/k+qaS7Z2w=
X-Received: by 2002:adf:eec3:: with SMTP id a3mr56070678wrp.337.1582445540718; 
 Sun, 23 Feb 2020 00:12:20 -0800 (PST)
X-Google-Smtp-Source: APXvYqwOZ/DYXl+XcdxcNcioYWjyDgY1O/v59EztMIj07VWdCsNv6wIcLG+8kygyVI/R+698U9QzxQ==
X-Received: by 2002:adf:eec3:: with SMTP id a3mr56070638wrp.337.1582445540426; 
 Sun, 23 Feb 2020 00:12:20 -0800 (PST)
Received: from ?IPv6:2001:b07:6468:f312:ec41:5e57:ff4d:8e51?
 ([2001:b07:6468:f312:ec41:5e57:ff4d:8e51])
 by smtp.gmail.com with ESMTPSA id g10sm369900wrr.13.2020.02.23.00.12.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 23 Feb 2020 00:12:18 -0800 (PST)
Subject: Re: [PATCH 5/7] docs: fix broken references for ReST files that moved
 around
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
References: <cover.1582361737.git.mchehab+huawei@kernel.org>
 <df38697632818443686a52340d6b38ef83cb0654.1582361738.git.mchehab+huawei@kernel.org>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <a180d8c2-c51f-900f-0328-cba4dd29f521@redhat.com>
Date: Sun, 23 Feb 2020 09:12:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <df38697632818443686a52340d6b38ef83cb0654.1582361738.git.mchehab+huawei@kernel.org>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_001230_443495_BEBB6C96 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Wanpeng Li <wanpengli@tencent.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, kvm@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, Joerg Roedel <joro@8bytes.org>,
 x86@kernel.org, Sean Christopherson <sean.j.christopherson@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Chen-Yu Tsai <wens@csie.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Maxime Ripard <mripard@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-crypto@vger.kernel.org, Corentin Labbe <clabbe.montjoie@gmail.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/02/20 10:00, Mauro Carvalho Chehab wrote:
>  Documentation/virt/kvm/mmu.rst                      | 2 +-
>  Documentation/virt/kvm/review-checklist.rst         | 2 +-
>  arch/x86/kvm/mmu/mmu.c                              | 2 +-
>  include/uapi/linux/kvm.h                            | 4 ++--
>  tools/include/uapi/linux/kvm.h                      | 4 ++--

Acked-by: Paolo Bonzini <pbonzini@redhat.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
