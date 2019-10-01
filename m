Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C63C35B7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 15:30:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pgp1c6ZJF6LBk/uTJKYJU6cMQ+8BDBhzaDihis/Hfws=; b=ZjWoZprCw2aLbF
	qV68DVR0op7e7quO2HU8Esjy+DSy7uTVxdpZThK0b2cndkaPZAJn0AMp1LV2dhGNALNC4jpErS7Fo
	aVgj5HVuBLcEdN3O88JF/dngCPiMXCwqHMHc1E7I4/5JLROF1IAGGUGdueHqNK17y1YkjVmVQplMP
	uTwE8LaqfQHKlQvtdn7aJFwvcyn6QG5SoFnPSdMMFFOFGzu2LYGye5EzDhWqlrKcg4l4cfh/EyCXO
	7K2F0uBoFXKR/n6hvjf9ptsha454Q3RtyYOUQcAAwuaS5E5tWZYvzN0qUkq4sXDynEhLW9VG/9zAM
	vwfYW44MtP5OfqSP7dNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFIEr-000064-6u; Tue, 01 Oct 2019 13:30:49 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFIEe-00005I-Vo
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 13:30:38 +0000
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7617A81F11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  1 Oct 2019 13:30:35 +0000 (UTC)
Received: by mail-wm1-f69.google.com with SMTP id l3so1421097wmf.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 06:30:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BuheqY/f1O8hT7ejzmcdMbupLoR6grwp9uDRC8131O8=;
 b=oi5m9rr4mVSkRpv/NrSZV8j+BRfmb89awmtsbDx/ErBbkvQASeOTlTnWi2s135Jnjt
 UECSiCToStI7fDUbghYsMuWkCwBBv+HN+PGAO1dZew0Sb1QsQsRQONArRFtZDDiPFwBT
 TRkf38Q2x5bt9SlaJAHg3gD7hOiXbvn9VvxBBQhTTS3L9jypebol1v+HFUQ6pr58pX2r
 kkY7ySJ/Lm2av7EYNjPbSAs5FBjkoFWXowjbtJTxgTZxSgiuhNgrTD2+2EJkG2tSPFUc
 7mumqpr/kQ9vsWLXZ96gVBdZNwBErEGVMhXsZ32ko8fi9srn2LCgvzaSbClKJV/SfF0p
 kEAw==
X-Gm-Message-State: APjAAAVHjUgLa0iZYb67aRkHz7WNL4f6ybl6w0knggCx+dxBhKenF32g
 pUNC2Td39eZyAg8gtJhdIZ5Zp48/eQYswh15jOFX4l0Pi6RTe+U1z/c/79mrzX0hyfDF6Ps0iv9
 mH2+s0fEI/yqu4jRgKOL47SmQoWuxlLxZZL4=
X-Received: by 2002:adf:cf0c:: with SMTP id o12mr17650015wrj.30.1569936634179; 
 Tue, 01 Oct 2019 06:30:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyLoU8SG3DZmYpn/Y9/DQvwMyh6yTzew4TWcr6TUqtstV6yqJctofHmHyf+BOjVolXCznTz8g==
X-Received: by 2002:adf:cf0c:: with SMTP id o12mr17649991wrj.30.1569936633924; 
 Tue, 01 Oct 2019 06:30:33 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:dd94:29a5:6c08:c3b5?
 ([2001:b07:6468:f312:dd94:29a5:6c08:c3b5])
 by smtp.gmail.com with ESMTPSA id u22sm21010957wru.72.2019.10.01.06.30.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Oct 2019 06:30:33 -0700 (PDT)
Subject: Re: [PATCH 0/4] KVM/arm updates for 5.4-rc2
To: Marc Zyngier <maz@kernel.org>, =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?=
 <rkrcmar@redhat.com>
References: <20191001092038.17097-1-maz@kernel.org>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <52252764-5dd5-38ff-bbde-9cf92abf6c05@redhat.com>
Date: Tue, 1 Oct 2019 15:30:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191001092038.17097-1-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_063037_042019_DE45D49F 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Andrew Jones <drjones@redhat.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Zenghui Yu <yuzenghui@huawei.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01/10/19 11:20, Marc Zyngier wrote:
>   git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-fixes-5.4-1

Pulled, thanks.

Paolo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
