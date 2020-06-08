Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C00681F15A6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 11:41:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KfE3RWSq4phs0h4KUT83oEuaIy7dN/Alh5/a0QmRU0Y=; b=Gf1glmG0D6is5R
	7tnGUX2Hh0AWAWVmesBgNLYkKTlxK4+zxNEdXiLh70W/dt6vplbl3HqKpvOesovOSjel4cAR9IGw+
	cJY0C2mz00p8zYBFnze+h/KUpQMv4Gk2S56s9+T7Oz6up7qPi+xi6ig/YaSfj+VfHNrb2zOfmblG8
	SM5bw3sPzpv9TWxwsJ4iQ425tHmNzB1FDMiQp2b9tO7MCxZeX3lKXSFIq1lRNZDavigxTrzDv09LD
	KIKxfw3MorS7pdhErapBDWZxAuvkCykXyE2S7VgjcKOeM9glVzkD+qnYw7QaZHQyG+ZCtnQ53f4Kk
	iFOJbxC6Lml9ISuAD3og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiEHE-0002nM-7O; Mon, 08 Jun 2020 09:41:08 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiEH3-0002mb-SD; Mon, 08 Jun 2020 09:40:59 +0000
Received: by mail-wm1-x341.google.com with SMTP id q25so15828981wmj.0;
 Mon, 08 Jun 2020 02:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+F6VpU2DhJ38D1OzhvVOMkYO64zmbpsjhAiXZI8h3vs=;
 b=iSoehG0/Vz0/hFRBTy05XlPZguWhE683LXK3Skhpl3x5As15/po8UkSHDk2lk6nX8s
 EmfTIGxZrRzy+4Uca9R+I+lMk+JJxO3pNYIKfGX3M1SHybTaTwQodmZK/e5QQjH3apXb
 bjYRtAiGQhKAH6ksUDm69xag6askBl3VCWymf/c94eoGYsBLlEsrhMmyU5sJ67PqcxTr
 gYo6AGAKfXOjpMVuQAcG8+RqQV7WapOqkbXqQCK1NLL4ysw+n/WlrdzAdYYGMFB2iuLt
 oQKy8A7deCvfHilqoP1TXjVWcSElvG3lhEVBjqOWdLkk/n+7n4+c++GQx9oZ5+w8zVTD
 5VbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+F6VpU2DhJ38D1OzhvVOMkYO64zmbpsjhAiXZI8h3vs=;
 b=d8lVZAfUnVnC6BhR0lyeRiY+i0TjpDY4iRyYIUcz8yo5cQHABfmXLJ+sc4erBUVTmQ
 kVKZT+VTzzpxCXUTyCphps5HCFdHU0FcDXtWcYlitv20Vjj5/029l+hMxv+oPcXcYZit
 WNMkt0PX7Z4wEAdCDYTae6yyjGTZmR+BoUm3QEw9q8k+eiCzKkIKFi1ntlaCY1nRoj7M
 Kh1WktM2dKsS6TzK4elOZ7AmpYvR5ThXr4kXjOo2SI6+gdNi7SA0CtDlU0LgPDH3pu6a
 uXkepyvTPrEeC1O7wYaUoD4XWUC+5qjmBNMkDOQuJGFZc9/sekcGBlb678cybJk2ysKj
 zARQ==
X-Gm-Message-State: AOAM530XgvOAizP6IfNrJ7S9y7VQMehk+tAxTejciKCqZdZYYq/b4zYE
 ooHxkfMewcwnWuWx37YTtcI=
X-Google-Smtp-Source: ABdhPJwwSZuP+bLORdgzdVpGe4oKaJlyNkuAUhDK5qX4qEIjzSeAk+d6t6RgsEH1l8fS5REb59KWjg==
X-Received: by 2002:a1c:f401:: with SMTP id z1mr14952827wma.44.1591609256454; 
 Mon, 08 Jun 2020 02:40:56 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id a3sm22096479wrp.91.2020.06.08.02.40.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 02:40:55 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: tsbogend@alpha.franken.de, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, jonas.gorski@gmail.com,
 linus.walleij@linaro.org, linux-mips@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org
Subject: [PATCH 0/2] mtd: parsers: bcm63xx: simplify CFE detection
Date: Mon,  8 Jun 2020 11:40:51 +0200
Message-Id: <20200608094053.3381512-1-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_024057_910781_C8F0D41E 
X-CRM114-Status: UNSURE (   6.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SW5zdGVhZCBvZiB0cnlpbmcgdG8gcGFyc2UgQ0ZFIHZlcnNpb24gc3RyaW5nLCB3aGljaCBpcyBj
dXN0b21pemVkIGJ5IHNvbWUKdmVuZG9ycywgbGV0J3MganVzdCBjaGVjayB0aGF0ICJDRkUxIiB3
YXMgcGFzc2VkIG9uIGFyZ3VtZW50IDMuCgrDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgKDIpOgog
IE1JUFM6IEJDTTYzeHg6IGFkZCBoZWxwZXIgZnVuY3Rpb24gdG8gZGV0ZWN0IENGRQogIG10ZDog
cGFyc2VyczogYmNtNjN4eDogc2ltcGxpZnkgQ0ZFIGRldGVjdGlvbgoKIC4uLi9pbmNsdWRlL2Fz
bS9tYWNoLWJjbTYzeHgvYmNtNjN4eF9ib2FyZC5oICB8ICA2ICsrKysKIGRyaXZlcnMvbXRkL3Bh
cnNlcnMvYmNtNjN4eHBhcnQuYyAgICAgICAgICAgICB8IDI4ICsrLS0tLS0tLS0tLS0tLS0tLS0K
IDIgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAyNSBkZWxldGlvbnMoLSkKCi0tIAoy
LjI2LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
