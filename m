Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0008A38EE0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 17:22:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y46UCu0xWnjznBmFeHk5HDjR1JwVUYpnJZ2YhxZ7vZQ=; b=qqLSmIaXxP+ZEa
	6gvRnWR/dxj2mAAVqGjPUMzIBCgJT5Rb3ghrN2/TetB4DTwdposixqOUQgDOJTRFTnEW6U0zaU6dp
	KObIBxDgYdRQuSkF37/0C9SdzqifC2Iv01SmP3PACLKUAZveKn7ESDscu2Xu1J+Cgr9/PVIcgH9VI
	ikc1BJ0tXfGwc0cxkU7jRIZOAyiRe1DmwZfcUuhYJxbG+0lZMsqjisR+d5yrDBT/Nd6UDUk/8ZfgO
	BUHmQGZKQIxkkSFwiIvX90dmhXED1Zk7DLbaRcvkjAy4Ge+KPUT8NJGtc1c6aMJkIUNN7ORvlCp0N
	JUS/mRCdBTskCyK+kh7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZGhk-00050Z-9K; Fri, 07 Jun 2019 15:22:56 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZGhd-000501-34
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 15:22:50 +0000
Received: by mail-qk1-x736.google.com with SMTP id l128so1486800qke.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 08:22:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:mime-version
 :content-transfer-encoding;
 bh=EXSmSWjcDB1szNpUZ4RnHlO+2EIGCfLRdk7Vv90DHik=;
 b=egnZVNmpT+xaStlzfGJh/0+mgbm9Y1D3frhr8us4SZ0cc+8P1SqFWwbZeJkeLGvBYg
 vmcQo+AQrNm94yjlLva8y/EE5ss3LNdbcCepnPnb0EMpW7lZ/jwdQE2CkTgFo6R1Qrpl
 itLjlfyRcl+/7ucoTB3iMRia0IuNop9r5ZoAY3ydtCpxEjME/kxXMUE+kg4QQxYBytVr
 AvdkvU9/fcAQrIjmbhID3rtrRQE8/wLVCjd9Zo1lhMWjVkAyAEkp3MhN4mv+yEfp8wdI
 MyrDrbYIiOYnkjZKhNkZCAcKTWYM86rPHzCFB9OU6EApBzC7mspDMr5dbZejDKGF5oT0
 8hLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:mime-version
 :content-transfer-encoding;
 bh=EXSmSWjcDB1szNpUZ4RnHlO+2EIGCfLRdk7Vv90DHik=;
 b=Esn/pxZLJoH7YxvQWk9Jl/JYckCQMKOUkCAOirvnbAfpWXH5arSPMltx8albhsG791
 fjBQfG0khoAvH3uIwRg9oyz47jkBvDEDk3bXvnqSwoQTlH0qN3A9KuHyGtB8mCfg79gF
 dvKfzhiYjYRYMT2wKZFTqLx4Ydia+bPSXrwmw2JoJSjITJfCmOyfqgAw+/Gn9j2aQ9aS
 N1LhDrbcES1bj2ss0SLyuK8rgiOFe+HzCEk81bqWPZAcXj893xPC4POAamgr2rrgu4OV
 ugWIxQgjy+b6kIi2CRohWtD46W83zj+nv5jHzTJCLkC8rLd0yVmeAM9pvHG3ll3ziTQC
 OFeA==
X-Gm-Message-State: APjAAAWSCw5VqrDPRi8qTRI05QYzXRqHbsxYdzji3VRmtiJt7deLL7PR
 +tHoQ0ex4wrjiL3SvVRTah1bZA==
X-Google-Smtp-Source: APXvYqy2bl40AjAKSQ91cJSFv3ieqdq17wcLtP1KGmw5Lg/DXfJAm/maZoQXjHWA5ZhBJnnO2CAnjg==
X-Received: by 2002:a37:640f:: with SMTP id y15mr43201126qkb.79.1559920967395; 
 Fri, 07 Jun 2019 08:22:47 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id k54sm1404799qtk.54.2019.06.07.08.22.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Jun 2019 08:22:46 -0700 (PDT)
Message-ID: <1559920965.6132.56.camel@lca.pw>
Subject: "arm64: Silence gcc warnings about arch ABI drift" breaks clang
From: Qian Cai <cai@lca.pw>
To: Dave Martin <Dave.Martin@arm.com>
Date: Fri, 07 Jun 2019 11:22:45 -0400
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_082249_179524_895AE3BC 
X-CRM114-Status: UNSURE (   5.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:736 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-efi@vger.kernel.org, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The linux-next commit "arm64: Silence gcc warnings about arch ABI drift" [1]
breaks clang build where it screams that unknown option "-Wno-psabi" and
generates errors below,

[1] https://lore.kernel.org/linux-arm-kernel/1559817223-32585-1-git-send-email-D
ave.Martin@arm.com/

./drivers/firmware/efi/libstub/arm-stub.stub.o: In function
`install_memreserve_table':
./linux/drivers/firmware/efi/libstub/arm-stub.c:73: undefined reference to
`__efistub___stack_chk_guard'
./linux/drivers/firmware/efi/libstub/arm-stub.c:73: undefined reference to
`__efistub___stack_chk_guard'
./linux/drivers/firmware/efi/libstub/arm-stub.c:93: undefined reference to
`__efistub___stack_chk_guard'
./linux/drivers/firmware/efi/libstub/arm-stub.c:93: undefined reference to
`__efistub___stack_chk_guard'
./linux/drivers/firmware/efi/libstub/arm-stub.c:94: undefined reference to
`__efistub___stack_chk_fail

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
