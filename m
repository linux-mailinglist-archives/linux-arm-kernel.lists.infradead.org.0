Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48884154932
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 17:29:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+gpazTbtOiUzCbpDtrLfHYAnSPGD/ci6nRM0aGkVGuE=; b=GYxot6SetOrkte
	Z1/yBXzaA9/Or5CJpyfJnIPvTv6RTdcdHknyCf+bqjF5blEGvik4ic50Yfcp0w5Bz/+qRt4za/H5F
	LLjTiAkNhJd1cSSic/JTIAvan3VHLOPy/EqKqm00AUkpl8NwmAIs0fm6OyS9bam7zqy3KsgEouwoo
	g7Chi42h8MuN9tter16dor4Fn3HTrVddH6KCbr3nKSBJRj4lxaogZReQHCOJqjU+T7K33TrrXXqxt
	J6AXsBSd3lJMqnrReO18L4khr5eCYhnOO3HoOdaaVyupGKkX300ddHjJKkBHPbah9QQV5f+E5oawf
	GX9PnkgflE7Ujoksxjrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izk2E-0007jm-B6; Thu, 06 Feb 2020 16:29:46 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izk21-0007iO-1s
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 16:29:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581006571;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ea5EidDzUS0jrns2P2Xa5IXT6fikg70+W0wKnCn2H9s=;
 b=iehS/v5YPF984urz4ZmZVXSOAtgk+Wth300Bxfa9+nZ3+FS/PDi8IzSYCX0c97S50l6Ah/
 4U0NlhWB98fajFygp5Pzbn54RvHPI68gPtOeyhMAwIAwKNVaP9mq7AGD38ceFHHNcJZPb7
 tGrbntVZxy6tWXt7taKrPgwfy5j80Aw=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-1-R0mHVyB6OY6DyQ0JgpQktw-1; Thu, 06 Feb 2020 11:29:26 -0500
Received: by mail-qt1-f197.google.com with SMTP id c10so4177537qtk.18
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 08:29:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=BT971wG6wPhX7VJFd1sOcOxmL5huobHf2O2WL2kB92A=;
 b=bJWPmPkeH/bIFGXRL4bMV7Rs5gbu1YW9ttck+b1yvD+L6bswuBMwvM+0idvEEzifS5
 KY9X61HFGO8WDQjP3Vl1QNdf0wMsFY3N7cLgfFwFEj813WPQx8ihweZDh+8biTDw/H5G
 oK6YDeRjIA78nctv7vvYrvsSTIn6a6XpPJQk4SOTctz5aomcRmu3wh6s4d23m3pQFRIa
 o6yxWY4iTx6a13s8BQA2RWoX2RizOOi1vE9EVbpc5FCLEFwoKp8AV7i3mW1hAdGX5JKN
 b5Fw7ia/qCg5kd4IHUH1u57RBkwSBiNwTyRPgoAg1TLH9fMAjr/5LcAKaxv9bdfpu4dY
 thNQ==
X-Gm-Message-State: APjAAAWojkuBrtbSUN743nnrgDc9zVPSRzyppnvJSIG/f5WJbcoSbNdM
 YE3q9APVfsJmb2d5BqS9xWGB56U+5mAjyqD8sO8hEwiCi7bq0j+GA7ZWbZ3SaaoWGrYraskFjzO
 ZCobkhkMlxKA7N9szihGcQL1cWxqE3RBHbJs=
X-Received: by 2002:a37:94d:: with SMTP id 74mr3342082qkj.352.1581006566410;
 Thu, 06 Feb 2020 08:29:26 -0800 (PST)
X-Google-Smtp-Source: APXvYqw79o/OSwP8qcG9zRkYGvX/+TD2xb8/Jp5SJeC8yu8obGrRcXecqs/KUsVKwfDvaLoqKhSpHg==
X-Received: by 2002:a37:94d:: with SMTP id 74mr3342054qkj.352.1581006566202;
 Thu, 06 Feb 2020 08:29:26 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id o55sm1966271qtf.46.2020.02.06.08.29.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 08:29:25 -0800 (PST)
Date: Thu, 6 Feb 2020 11:29:22 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v5 13/19] KVM: Simplify kvm_free_memslot() and all its
 descendents
Message-ID: <20200206162922.GD695333@xz-x1>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-14-sean.j.christopherson@intel.com>
MIME-Version: 1.0
In-Reply-To: <20200121223157.15263-14-sean.j.christopherson@intel.com>
X-MC-Unique: R0mHVyB6OY6DyQ0JgpQktw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_082933_176360_17D215D2 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>, kvmarm@lists.cs.columbia.edu,
 Janosch Frank <frankja@linux.ibm.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvm-ppc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Cornelia Huck <cohuck@redhat.com>, Christoffer Dall <christoffer.dall@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Philippe =?utf-8?Q?Mathieu-Daud=C3=A9?= <f4bug@amsat.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 02:31:51PM -0800, Sean Christopherson wrote:
> Now that all callers of kvm_free_memslot() pass NULL for @dont, remove
> the param from the top-level routine and all arch's implementations.
> 
> No functional change intended.
> 
> Tested-by: Christoffer Dall <christoffer.dall@arm.com>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>

Reviewed-by: Peter Xu <peterx@redhat.com>

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
