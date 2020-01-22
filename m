Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E71145C64
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 20:26:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A7gOf2voqrxCCJP4LJVAkjrm7A7JcKBqAeXRKXIdeeY=; b=appUzWlC05xZBY
	fQ4MIoFpt5qnrHnaLEgXjcKRjYn0HRONARfd6zbwhx96ef4wwrOFUXpbS0sR27ZB7fNjIwfklYjon
	a8KXbY88gj2VMKSQDzpesBi1k7V5XrgfnFcCECfn8qr5r06beCXVXLCB5XdXteGFaNTZLi9SsIC8d
	ii9vSiLWX8W7CNImYZ+tyOpTYg5G+tuTICXmGmz+jVayR55ZYsXpmBoUBm5JmXBLhM7FnJZytXWhH
	ftIVSt0gDHa7+kU5PQSq3laRb5tZRWxJ7fjOmevyZ2WC9ein4OHcgVoCmRXgJGoa2lCiMCgAWVz8A
	ojuVdOLgl+IydM3OyGAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuLdp-00013B-EN; Wed, 22 Jan 2020 19:26:17 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuLde-00012C-Mz
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 19:26:08 +0000
Received: by mail-wr1-x434.google.com with SMTP id t2so363048wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Jan 2020 11:26:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=lenanzhAd5ZmJ8ZelJXp+OnhSKZtXCOjL7aSTd19JMM=;
 b=AmWTV64rARiYokUIsTZCE6XYmN6FscsMa7ycxoxDYCLpMr2sDbyc4DtB/bMcP3beVO
 c/ownfzw2xKwktV0NtzzZdCttwI35llhXZ6S2jaCTzmrvBy7ufANOTrIv9gmpt+HhHbs
 yjHDokOiY2ib5xo2bJCv0C5Zhb0QH2LtVYaMU7J9eWh9gMmlWuXCtAc1ijShk6c9vdLr
 L/7BCDsCXzBDefDqLpwA8rzqoOqw6qvtsfljlqOfNo0gTgErvf7hwHFU0LjqBxDB5bSd
 7EfChP7JaPgnJLIVU5nWYEDut3puqwfdRUit9uGa/Trdn5ZmMXUtNN9TkuLQh63oSdur
 jJnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=lenanzhAd5ZmJ8ZelJXp+OnhSKZtXCOjL7aSTd19JMM=;
 b=g/xEOGur9Gq21eNzmNFaa2qvL6qOe0cZMwNA6Lt5Y4wgyliMj23LdHZlTiBLhpTkbg
 0MZfTFXkpmaIXJG1XOdWGqnYQctzhpsKf4OiZ2PQ0WWYeEzuFKKWGd/6rP///7vypLan
 SE/xj9UCd3JNeXSVofcAU7MLPA8WlPH00yBMsKS9W3foE/gw+9+Ql1VkiZinhPO/pxMD
 quS4CFsfOy9qR5Sl0zlp9wJGIrbkG+mD66obHD48fgSgTaTnytUaqOvdMTpWNl3QnAFv
 cbMSB6KC7tvxNS6HRWOO+zmAKq15RDhACwUB9neRiYQ5GrAVRM/ZPeymBfq0m6dyVwTs
 wWag==
X-Gm-Message-State: APjAAAUReFa9xCTqQASxtpGSGuTlnsu/uLS1rP+vnAl16EdRsqhvZx/D
 J5kRHJ4jEUT756s4pYHcJm17UicTcWrAIg==
X-Google-Smtp-Source: APXvYqxPim9z2Sj9OjL8AqnRKdGAJR7kLVCCB2tXUZMqrn0M+DZ0etI46zsM8E7Zp95F+s4AagQleg==
X-Received: by 2002:adf:fa87:: with SMTP id h7mr13515107wrr.172.1579721163151; 
 Wed, 22 Jan 2020 11:26:03 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id m7sm58599030wrr.40.2020.01.22.11.26.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 11:26:02 -0800 (PST)
Message-ID: <5e28a1ca.1c69fb81.ceb6a.b83c@mx.google.com>
Date: Wed, 22 Jan 2020 11:26:02 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: build
X-Kernelci-Kernel: v5.5-rc7-78-g7bf8ec415871
Subject: arm64/for-kernelci build: 3 builds: 0 failed,
 3 passed (v5.5-rc7-78-g7bf8ec415871)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_112606_801343_12B37608 
X-CRM114-Status: UNSURE (   3.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:434 listed in]
 [list.dnswl.org]
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
NS41LXJjNy03OC1nN2JmOGVjNDE1ODcxKQoKRnVsbCBCdWlsZCBTdW1tYXJ5OiBodHRwczovL2tl
cm5lbGNpLm9yZy9idWlsZC9hcm02NC9icmFuY2gvZm9yLWtlcm5lbGNpL2tlcm5lbC92NS41LXJj
Ny03OC1nN2JmOGVjNDE1ODcxLwoKVHJlZTogYXJtNjQKQnJhbmNoOiBmb3Ita2VybmVsY2kKR2l0
IERlc2NyaWJlOiB2NS41LXJjNy03OC1nN2JmOGVjNDE1ODcxCkdpdCBDb21taXQ6IDdiZjhlYzQx
NTg3MWVlYjkwMTA4ZDMzZjMxMjkzZjI5MTdjOGUwMjIKR2l0IFVSTDogZ2l0Oi8vZ2l0Lmtlcm5l
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
