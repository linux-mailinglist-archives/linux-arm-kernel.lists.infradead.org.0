Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44216143319
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 21:55:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OjP6iySWcU514ovu6Guh88CGeTay4b+4Nau1EXZs6Ls=; b=ccclnY7t7q2P9E
	5A1ChuGCLYn9MyPc8QHPIvODqpYB+SdYvdbSXlnzS2url2o02c2b1z2uZWnUUCK251Jb/Xzf/anb+
	r43ndDaw/i7rcLiIQlid2VdzV1O5dXBjTPj2gY8Y6LcUwXve7Zq0Jnsf/YtBGBIozYybVtttgihgG
	9zh12KXX3omwSZ5yIBQn8kjQkUrQMhkVGfn/8XFUclz2hJ6z1zsSLJLtWT+Z+P6G8zVn66F5+Gb4d
	BPzu8LF+KhS6hWnfwdOKXejHqT7Xs2D8U4woeSqNJwNITv4kNmEZFCSs/VBkyuh/vaurzeKU5sn9v
	QvIxPo7ZIusTvD4YtbSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ite4m-0001Yk-FA; Mon, 20 Jan 2020 20:55:12 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ite4U-0001Px-PT
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 20:54:56 +0000
Received: by mail-wr1-x42e.google.com with SMTP id d16so901763wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Jan 2020 12:54:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=8lRXXIUyqwXrmsBEZ3rjQQlxicv1Nv/m0tfwidDkhj8=;
 b=rhdoQPLQ07urVcj2wMzE43Og3Gct2l8w1sO4UCbqvAzbGnu9jNTv94d5NS1XMJBdlH
 G9R5Ms4izHWbNAuI5Pmk4fl4uyDh51BuJ+eBYqtlfDspWjn4tToxQsr6XhTM5siS+7Cl
 BRsgoi6poITatcFWE81ii8bOWoXePJ13pOtxxb1Nl8waqf0IRziDe5OPw07DmziWyKRO
 NoeiDEWbSUXZD6Hl+SX0kNWEtagVyvDFWWI0MyuGcVxLP6d6RYASyhZAH/ke4j6Hb803
 t1Qs0WG74pYTQ12KbAEjhQuoO6Mkv4UmBHZEPMO8up7rGRnrmJVlhLp3gNmSqRr6TPnw
 uxMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=8lRXXIUyqwXrmsBEZ3rjQQlxicv1Nv/m0tfwidDkhj8=;
 b=U5y4UVas7ij/dOeJ3DR0TcE0xUgpzYHJNQKdtyNaUfltB2G3kFc6sVmjtQ4l9Bywlg
 HfitUID6wDnZ++BfCEO9/T53w9Du/WVG5eOGXHKgep084Rh6qqwIy8e0aUKb5+5mrvTm
 5LHu0PySYYjpYAnlRkMkkfXM5tBMV6s2EpmVw9Jj4NPhaH0oIBFyLln6TPFnNlMx7oCI
 2akMIDrWV5PCSCfMCJC6lYaTwuIz+d2s2jotS2NpW6va0FY9kvMZJpkxYtPdNtQhY90a
 cnVqFRcFbe5hkjEZbrDvibmWQ7Z/vPwTt1DFsFqzZTez2zROvwMfMR0M/AAHm3ICcUhZ
 xJQA==
X-Gm-Message-State: APjAAAWdnxzi+uQkkV5z1qYqpP+BXnnJ6IYSitske3WWKedcogzHvg8U
 Ek5wCmyAHf7SLXCfO/GKkjCZdA==
X-Google-Smtp-Source: APXvYqw3/qMS6Y+xEoaKQDefsTLKHgn8Y0loRzc82kDexLp3kKeNIAGphvVzk6fzUZJpvikn8AdjZA==
X-Received: by 2002:adf:90ee:: with SMTP id i101mr1258448wri.417.1579553692772; 
 Mon, 20 Jan 2020 12:54:52 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id e16sm49323228wrs.73.2020.01.20.12.54.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Jan 2020 12:54:52 -0800 (PST)
Message-ID: <5e26139c.1c69fb81.81dd3.66f5@mx.google.com>
Date: Mon, 20 Jan 2020 12:54:52 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: build
X-Kernelci-Kernel: v5.5-rc7-70-g46158a360c3a
Subject: arm64/for-kernelci build: 3 builds: 0 failed,
 3 passed (v5.5-rc7-70-g46158a360c3a)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_125454_973569_A4C30F53 
X-CRM114-Status: UNSURE (   3.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

YXJtNjQvZm9yLWtlcm5lbGNpIGJ1aWxkOiAzIGJ1aWxkczogMCBmYWlsZWQsIDMgcGFzc2VkICh2
NS41LXJjNy03MC1nNDYxNThhMzYwYzNhKQoKRnVsbCBCdWlsZCBTdW1tYXJ5OiBodHRwczovL2tl
cm5lbGNpLm9yZy9idWlsZC9hcm02NC9icmFuY2gvZm9yLWtlcm5lbGNpL2tlcm5lbC92NS41LXJj
Ny03MC1nNDYxNThhMzYwYzNhLwoKVHJlZTogYXJtNjQKQnJhbmNoOiBmb3Ita2VybmVsY2kKR2l0
IERlc2NyaWJlOiB2NS41LXJjNy03MC1nNDYxNThhMzYwYzNhCkdpdCBDb21taXQ6IDQ2MTU4YTM2
MGMzYTM1NDU3M2Q5OWIxNWMwNTIxMTZhYjVmMWY5ZWIKR2l0IFVSTDogZ2l0Oi8vZ2l0Lmtlcm5l
bC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2FybTY0L2xpbnV4LmdpdApCdWlsdDogMSB1
bmlxdWUgYXJjaGl0ZWN0dXJlCgo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoKRGV0YWlsZWQgcGVy
LWRlZmNvbmZpZyBidWlsZCByZXBvcnRzOgoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KYWxsbW9k
Y29uZmlnIChhcm02NCwgZ2NjLTgpIOKAlCBQQVNTLCAwIGVycm9ycywgMCB3YXJuaW5ncywgMCBz
ZWN0aW9uIG1pc21hdGNoZXMKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCmFsbG5vY29uZmlnIChh
cm02NCwgZ2NjLTgpIOKAlCBQQVNTLCAwIGVycm9ycywgMCB3YXJuaW5ncywgMCBzZWN0aW9uIG1p
c21hdGNoZXMKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCmRlZmNvbmZpZyAoYXJtNjQsIGdjYy04
KSDigJQgUEFTUywgMCBlcnJvcnMsIDAgd2FybmluZ3MsIDAgc2VjdGlvbiBtaXNtYXRjaGVzCgot
LS0KRm9yIG1vcmUgaW5mbyB3cml0ZSB0byA8aW5mb0BrZXJuZWxjaS5vcmc+CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
