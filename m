Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B11CB1C119C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 13:44:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:Subject:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yFDtcV8KjAc5/X3XEDeKaNXafczy521cmty9t0FErMw=; b=auNVLY3JYVh7mT
	4Muqwnlt/+dazTVpOj7d2oXNxnKkqYth7Dlx2eiEe3Sy1ykHyBDFPfeyidp0tyQ47Ig1iLa1SF/TV
	QI2Wk4q/NNZIxnGytUXtW6Ha7z9HWKF0EXO95PFuGs6gWkYRuGuY+g6+VgvBgopxFnMi3jiyhZ/p9
	K361UcUQQFW6s986vJTiHQareVa9IKD4vYr0mHl8D/9k4+jpyT47huC/UObjzcnom5TW91nWLUNbJ
	qz5LRKt2PeXRXdPKHxvyWCDGH3TKPbtZWBESe9abHmwbxUkYUSlC/ah9s4wk9mR6hp0LfgapSYoWc
	BMkvAz6Y5p8qiPrIpPmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUU5p-0007VE-Ed; Fri, 01 May 2020 11:44:33 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUU5j-0007Up-Ab
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 11:44:28 +0000
Received: by mail-pj1-x102a.google.com with SMTP id ms17so2263136pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 04:44:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:content-transfer-encoding:mime-version:subject:message-id:date
 :to; bh=n9JvbFywyURbEwBEi0FiYaHRlaV7runS7NOuLUNzIak=;
 b=p7YuWutyyE94LmFHP9fIoUY4LsTfJkhV3ifuOnYhT/Uo4ojWHzqwiC9syqAN9B96Pf
 AwYPlMvW4sSx7o8Fhx3Pss+MYKmDwxbwUz6l+EXHW0XIIBLP2d5jUR2TnwZXI9m14XAM
 pTA7js1J5vtLMI4QlwzTj1Hur8hy3VfdkWKJOm+XetC9wofQJZg1QhNGW/gA1OQNCRJq
 qmXUmShYStTGsuWzgV7R1uROFjmIghW8kbUEmDXQd0OsrUQS58oCRIMk+nidy3imhK7/
 ysBNaQ+lceHOphAeHeOrB4cR2zbRzL5h1fdRlW7SYWbqeOByYM6fG10WUwZVZxq/VRV8
 gIOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:content-transfer-encoding:mime-version
 :subject:message-id:date:to;
 bh=n9JvbFywyURbEwBEi0FiYaHRlaV7runS7NOuLUNzIak=;
 b=E7HmJNv4YyjcAFlbWZfyQNhp+qjh8snpMN8UoG+IZweGu9ch5W19Gf5ksz05/VvY28
 jkaAhqKJxSTV4/PH97jdYLlwRjIVbHS0G8l/zYUyutgLwNFyDRd4Lx4DiUJ56tjDhEtF
 j6hG9F3tPemCo05zPRhUp0RgOQmsuoSWkgeZPC35IgBP5Kuw2H6NmAX6dY7vjVlfQ0s+
 wfbgSyMJb7Je+Z+Xqkjznm3Xb9l/46RxcXON3+dLMFnR1wuwM98wuK/0/RuofB1AI81T
 GbqJW86L57uwp47Fd3ZLPOzBKdBmtu6x99i770omFtmbDR7UsHzmpXR/GGp9GbeAjcaG
 cVgw==
X-Gm-Message-State: AGi0Pua2vAyvpeEgri4ALcAPHnHF6y7V9CE8hNNmHEmmqjTrroxQpS78
 4l8CM6sZ+bu9WmbCJEgGHne4y35x
X-Google-Smtp-Source: APiQypLUQXotQdVcUwpLi39T8EMLx5PJIJ/V83Wlw60vsMMwcIS2+R7QOlfoeYng2Gr69silUOfAcg==
X-Received: by 2002:a17:90a:d24a:: with SMTP id
 o10mr4133781pjw.18.1588333465129; 
 Fri, 01 May 2020 04:44:25 -0700 (PDT)
Received: from ?IPv6:2600:6c52:7300:a0a:40c5:5a27:9a32:8699?
 ([2600:6c52:7300:a0a:40c5:5a27:9a32:8699])
 by smtp.gmail.com with ESMTPSA id y3sm1945159pjb.41.2020.05.01.04.44.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 01 May 2020 04:44:24 -0700 (PDT)
From: Billie Teall <billiejteall@gmail.com>
X-Google-Original-From: Billie Teall <BilliejTeall@gmail.com>
Mime-Version: 1.0 (1.0)
Subject: [PATCH v5 4/6] dt-bindings: arm: amazon: add missing alpine- v2 DT
 binding
Message-Id: <942D5BCC-BEF6-45EA-8180-89B3FE2BB829@gmail.com>
Date: Fri, 1 May 2020 04:44:23 -0700
To: linux-arm-kernel@lists.infradead.org
X-Mailer: iPhone Mail (17D50)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_044427_362638_35A36122 
X-CRM114-Status: UNSURE (   5.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:102a listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [billiejteall[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

77u/CgpTZW50IGZyb20gbXkgaVBob25lCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
