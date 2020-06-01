Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E47211EA006
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 10:27:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xuskA6pgyCSJqZJD800s8BADtgeBJuKF2hTL/Jr28Vw=; b=cAeREZ6pFQpL1s
	lX26nPyZxwUUqFVFrONfjeWQCYbVdfq700EMcteacQhAJD0LaFRfbhIBYRKl2Rs9xhmVYI9DN3Oxs
	jn0KDbIc/KsrKNA6ukSpbD4Yp9u/iGSNLxoI9JAYuYXmCQR4T0j8fphZI0waPGN9kwDDX9oj9PIBW
	PQRqDQLqqd8WVvXEaHHnNMS4N7hwqODSx5R+CmaKydRR7b+MCOkj4FwnnMALFk/XaBg6zW6tOEUk+
	WooyN2kn0fyCUQsKomw/kvB/041qnrgx4zqZmeIHNYCvECiywV/djf9AcvHlyHDJPa5rI449jKglX
	GAoTzy3XfgC/hEAn68pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jffmu-0007si-69; Mon, 01 Jun 2020 08:27:16 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jffmo-0007rz-0b
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 08:27:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591000026;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=E4lu/dxD8ezXYOJnBc6Dn7bo6tW00B3HpYIm/3Tes6k=;
 b=X7IgWz5M8zj6yUs+pMkbt+NtRaaSKNS1DnTfPfMdpdRNLZIrne7WK7BwccfoIVys2dmPaY
 QiNJLndlIOUzovdPDFX45S+8cv8yzx9YgrpCEeh3zZzLwkzGIFcy5LjPFeWC670M6DmRaP
 ANOdCwOClkw+V/ySt3FcsxF8eRlP3Ak=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-469-uSgwrcs2P8yYXQln6HngpQ-1; Mon, 01 Jun 2020 04:27:05 -0400
X-MC-Unique: uSgwrcs2P8yYXQln6HngpQ-1
Received: by mail-wr1-f72.google.com with SMTP id n6so4606515wrv.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 01:27:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=E4lu/dxD8ezXYOJnBc6Dn7bo6tW00B3HpYIm/3Tes6k=;
 b=H5HxKbV8dez0NJrvsdAj0ZfA1DiDpagpNFduPoAbL2CQsZC9bee9IE+Q6HC4nwS5iI
 wEMnfHYJt6oeHRhk2sJNW3YHDcImrj0FSXUUWTrVhV81YMkMS9qNshz0rRlF2VTuEZbF
 JyCkTltnP0cpIyw+CU7J7q8M+9WaghqNXAng3udp3mUD601wkf20DpZT2rAaM0VtxLHb
 zpeDb78ybKmIl0Cx0rjx+cQkxO92KKgH5dtAVJf9pf1wlcKlurNrg8TYw0NdZLWMlPkl
 Rk+sphm3YGl2FS6JWdmxLQ48w3A7n07NtBa8s4OpoEma/wwirjXOabuZ0OaifldI26s/
 TjnA==
X-Gm-Message-State: AOAM533DhYLQZTZ4wNPHkXcQLKKLKg2ItD4TNn+dyD+HSaYNDraOr2rq
 L7CdUeoDejMpnbDV8r+oeYJUZgWbLGn/tAbb//O5ixipOmBW2+WsyZrC4SqWEu2xoZsl2ktFa4C
 4add0lIJPttYp8BDO1iT6pS0U1vw3AXL/XYc=
X-Received: by 2002:a5d:4bcb:: with SMTP id l11mr22357423wrt.363.1591000024454; 
 Mon, 01 Jun 2020 01:27:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx32HOgFCCtByd40naAgUYbnAHE2Ln8h8s37CuU7DmFEmUw7hzr40v2F7kG19gUrQdUe0+aLQ==
X-Received: by 2002:a5d:4bcb:: with SMTP id l11mr22357394wrt.363.1591000024205; 
 Mon, 01 Jun 2020 01:27:04 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:e044:3d2:1991:920c?
 ([2001:b07:6468:f312:e044:3d2:1991:920c])
 by smtp.gmail.com with ESMTPSA id h137sm11582353wme.0.2020.06.01.01.27.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 01 Jun 2020 01:27:03 -0700 (PDT)
Subject: Re: [GIT PULL] KVM/arm64 updates for Linux 5.8
To: Marc Zyngier <maz@kernel.org>
References: <20200529160121.899083-1-maz@kernel.org>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <32adb91d-c80c-743e-fe8f-57aee08140c4@redhat.com>
Date: Mon, 1 Jun 2020 10:27:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200529160121.899083-1-maz@kernel.org>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_012710_135147_63874787 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, Will Deacon <will@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Keqian Zhu <zhukeqian1@huawei.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Jiang Yi <giangyi@amazon.com>,
 James Morse <james.morse@arm.com>, Andrew Scull <ascull@google.com>,
 Zenghui Yu <yuzenghui@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 David Brazdil <dbrazdil@google.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, Ard Biesheuvel <ardb@kernel.org>,
 Fuad Tabba <tabba@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/05/20 18:00, Marc Zyngier wrote:
>   git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-5.8

Pulled, thanks (to kvm/queue only for now).

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
