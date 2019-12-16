Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD046121B00
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 21:41:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=giu8nw0v9e4eMe57aCr7mEP3ndHMURw816fA6ZXe9Po=; b=tsKcnR8IV+14rh0wI5Z8oWyU1
	HbCPI+zfm5MJzxPiWA/hbLejvpql77aVzA42BHYKosaIt6duyFJO5c/wF5dWmV1sWmcOfgqioQWmM
	xnzpZL2nYlg+y7MJlMrS+HVnhJYMFx979Wtbhyg5EIRatkcqxJJoT6xtkzRWKz2Uooj2sKdu3w+J3
	HhmfYoJ1g7Nq8MuYg+/IEaZZzDOAHkdpARAkM4FrMf3s13Al/8ZMsSNKgzlmTZODHhp4rYbuhRS+q
	JNZsDFFpgB+K/NKTIXU5ie+FH89KT3q0NcVRKKg/laVLOFqC86qChP+YMzVKx6jWxkwW90aqlRB0x
	FKMr4X+EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igxBc-0002Gf-Ml; Mon, 16 Dec 2019 20:41:48 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igxBQ-0002G7-67
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 20:41:37 +0000
Received: by mail-wm1-f66.google.com with SMTP id m24so728586wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 12:41:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4LEUOClJGFBZXXimsbAlWTuczz0gXm2nGBL4FN9Bv/4=;
 b=LOgIdCyEB1cFuPsBkeK8PtT3vAaab+j36SYb3/U9lUbl+07GYU5nk/kiEN98kRxfMq
 8E9Z9xJPQMEn01eOabKmb4DMnr3+MRza91cU9HWQTYp65FbrOEQUCVDgfPQCsczAvhfD
 wX8z+iZpNQhG8Ih6gMdY74CGbVfXRnXK2j/S3TlyMu62T9OUvviIc4EOB3Fu+0N0BkVg
 tHhc3DylRle9gWZq2K03mOBVQwN3yCzZf80DhVgX8fGrHDkC+BhEZWtKsKGzD612v/PI
 GT7uKB19wbXbinm7NaJ9UmH2KcI3h/qk6xbn2XPKj0Hm5u1v5zsZTGsnrcjfkde9+Sev
 cXLQ==
X-Gm-Message-State: APjAAAWRtbgScWCsR845NETwUxYE/Qefc8HvuWTjUgvuY1LUR/+rKT3J
 m+89c8CM9Z+nuRUsd1ZbQck=
X-Google-Smtp-Source: APXvYqxbj7wa/3nG3xbSmpvEUqc+RDkNVQ++hJser00UJyvc40nYH9YoURVBkO0nn1m04737kSMJDA==
X-Received: by 2002:a7b:c386:: with SMTP id s6mr924437wmj.105.1576528894763;
 Mon, 16 Dec 2019 12:41:34 -0800 (PST)
Received: from a483e7b01a66.ant.amazon.com
 (cpc91200-cmbg18-2-0-cust94.5-4.cable.virginm.net. [81.100.41.95])
 by smtp.gmail.com with ESMTPSA id f1sm23611224wrp.93.2019.12.16.12.41.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Dec 2019 12:41:34 -0800 (PST)
Subject: Re: [PATCH v4 2/6] arm/arm64/xen: use C inlines for privcmd_call
To: Pavel Tatashin <pasha.tatashin@soleen.com>, jmorris@namei.org,
 sashal@kernel.org, linux-kernel@vger.kernel.org, catalin.marinas@arm.com,
 will@kernel.org, steve.capper@arm.com, linux-arm-kernel@lists.infradead.org,
 maz@kernel.org, james.morse@arm.com, vladimir.murzin@arm.com,
 mark.rutland@arm.com, tglx@linutronix.de, gregkh@linuxfoundation.org,
 allison@lohutok.net, info@metux.net, alexios.zavras@intel.com,
 sstabellini@kernel.org, boris.ostrovsky@oracle.com, jgross@suse.com,
 stefan@agner.ch, yamada.masahiro@socionext.com,
 xen-devel@lists.xenproject.org, linux@armlinux.org.uk,
 andrew.cooper3@citrix.com
References: <20191204232058.2500117-1-pasha.tatashin@soleen.com>
 <20191204232058.2500117-3-pasha.tatashin@soleen.com>
From: Julien Grall <julien@xen.org>
Message-ID: <b3a6359a-e7df-b47b-f50d-31b716fae191@xen.org>
Date: Mon, 16 Dec 2019 20:41:32 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20191204232058.2500117-3-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_124136_229037_3F027FED 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (julien.grall.oss[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On 04/12/2019 23:20, Pavel Tatashin wrote:
> privcmd_call requires to enable access to userspace for the
> duration of the hypercall.
> 
> Currently, this is done via assembly macros. Change it to C
> inlines instead.
> 
> Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
> Acked-by: Stefano Stabellini <sstabellini@kernel.org>

Reviewed-by: Julien Grall <julien@xen.org>

Cheers,

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
