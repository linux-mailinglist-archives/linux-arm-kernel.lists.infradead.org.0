Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 457011E2079
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 13:05:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QzZQYY6PVKZVAqKS6DYDcVz/a9N/JTK/6uHLIu5isRQ=; b=F4Nf22DhN1j0aG
	N2IdjZr/cX17iyw+DtlIYhdWWCeGYDBcpO1zcM/IzGPQ00g5igCKboKeJ438f9zIGaNINMBkcy/+k
	ZF1uGrkJz0LQHYGVjDZRAvy6dI0JyysddvvhibMq1T9Gcw8i99zikJN+i05RV21517Mok6sR8rKgH
	0juoPOp2pK+iCmK6uuDEtutAhBc/VlyRdDz2AJYKGknxECQZzyXBAG1SwjWbMsiQ0i5HNvMUCmyBR
	FhEIsNzYKIWYk0iGVMsyFl9I60DtEAdxk81KsZt9ywKlVyc/+aW/XHhx00Lxqeh153R8I5G+oChYj
	NQ3LFHOQhVtnW4zo2vGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdXOO-00051k-2i; Tue, 26 May 2020 11:05:08 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdXO2-00051Z-ED
 for linux-arm-kernel@bombadil.infradead.org; Tue, 26 May 2020 11:04:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=xIB7OS97s2nZ+MWLVT+97VqO3rsy+o4p/6eLpkkCoU4=; b=DJrziiDcq0cJ55vzm1qRmHS11w
 D6cQ4wFh4xX+716l3BGa5W5OX8DNUusWt9vAXMZpbkSVzqb8Bfh8M7eJE/revrqaVjM1q0uTg5Y4r
 3j+6PueA+XVffBrK4H5smjjxWZVWysWzwc3Lv26Ahd5z434igb4sr9QZB4g5Pqcau8qP2sig1kEEZ
 RJP76isfd3yCMcZ00nSrpRf2YEHGa5kQsSFPcPNDfyKl4G/I6D6y2v/Ahe5W7ROwcnt3phNZaN4pJ
 dVHAC6kSjO1F/gHPrcVe7Z8drTaSD7FMs4a2nc1Q31J45UfZHteS0jIKkXSQauS5jkHnZAMnk32U0
 zoRLA6Sw==;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdXO0-0007BU-Ud
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 11:04:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590491065;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xIB7OS97s2nZ+MWLVT+97VqO3rsy+o4p/6eLpkkCoU4=;
 b=PNrPffuufyryleODdHyCvctTT7csLKnILaMIuWD/gTVYUq9LdTdju2U9Wf65P7eStUdxsx
 bCctiPNM/Fm2THNgxCCTmbjB2eay8ZfJYmZ0ZrTK/GeAr7G3GT0nmze0QSEdfHhGuxLABm
 RbnSn3+3+zR8j9VzjOU+MHBqtGLMH2k=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590491084;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xIB7OS97s2nZ+MWLVT+97VqO3rsy+o4p/6eLpkkCoU4=;
 b=SgJ2CWXenaC68ECVqNmceLjyT8u3IXCgGbBHNhknlCKt8dpkcrS24VgO04sJYZULwFGwWP
 7W79jucdjW63hyhMWSWo9poG1cCtNTddKydKgGTwIKGYiz3gkwFZB9fUuY+GPq+1gdISoD
 VqI0o8GidsZXPAuTRSkENvPMBBD/4vI=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-73-R1paOUJLMAWdN9OpScR9gQ-1; Tue, 26 May 2020 07:04:23 -0400
X-MC-Unique: R1paOUJLMAWdN9OpScR9gQ-1
Received: by mail-wm1-f70.google.com with SMTP id f62so955479wme.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 04:04:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xIB7OS97s2nZ+MWLVT+97VqO3rsy+o4p/6eLpkkCoU4=;
 b=QifjsBNjV14UjkvGHWVq2uODwrSs7/cD9R4f150qFtE4RoiSHBNbXAcMazE9a9fb/o
 oD2XAx0rXCYeTLf735gOfh5WWSSAEUrxlVbj7lpVypU6TIRw//0auVboNpExIaERtk5E
 O++nifKfyol8t4GXoxjcgIvgzk+mCFg7avklxcdRyi7dhhlWTalDod4SREuf2hn5QgVQ
 r9y6GDcwi7R+f+C7aRTvUSIOMOrgZMjtqG+OteUjqa2Y9lP2fbIEyA0jyaYuBdFR4kof
 H+q4E49Inc49V/KBGnOarlCXAtFIZRcbu3lxbqE9M1FiocpeGXqg8wisDi1NGtsdbjX9
 giJw==
X-Gm-Message-State: AOAM5305tWuJ94ridFsKGcadFhmOFwOJkiDvDc6bdYfA3xECPqouWH0e
 eZGp2Ldcfo7bIMCYoJnOhYdw7+bOlvBIg2JGGxZDw56hWM6/HheL5CFmbCxUgVFlYpb1iM5vNLU
 Jt6tt7zLxtUsqbeCsWNBuHALunaiAOYKGgLE=
X-Received: by 2002:adf:f907:: with SMTP id b7mr20031450wrr.203.1590491062075; 
 Tue, 26 May 2020 04:04:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzNw+hbSCOnwHhQ8PSLX7KyYKugJu8XcdkmlAYSig3h7ARIiT+NtvA9gyUHdwlenr+GkL4fBw==
X-Received: by 2002:adf:f907:: with SMTP id b7mr20031416wrr.203.1590491061680; 
 Tue, 26 May 2020 04:04:21 -0700 (PDT)
Received: from localhost.localdomain.com ([194.230.155.118])
 by smtp.gmail.com with ESMTPSA id d6sm22928240wrj.90.2020.05.26.04.03.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 04:03:52 -0700 (PDT)
From: Emanuele Giuseppe Esposito <eesposit@redhat.com>
To: kvm@vger.kernel.org
Subject: [PATCH v3 2/7] documentation for stats_fs
Date: Tue, 26 May 2020 13:03:12 +0200
Message-Id: <20200526110318.69006-3-eesposit@redhat.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200526110318.69006-1-eesposit@redhat.com>
References: <20200526110318.69006-1-eesposit@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Emanuele Giuseppe Esposito <eesposit@redhat.com>,
 linux-s390@vger.kernel.org, linux-doc@vger.kernel.org, netdev@vger.kernel.org,
 Emanuele Giuseppe Esposito <e.emanuelegiuseppe@gmail.com>,
 linux-kernel@vger.kernel.org, kvm-ppc@vger.kernel.org,
 Jonathan Adams <jwadams@google.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, David Rientjes <rientjes@google.com>,
 linux-fsdevel@vger.kernel.org, Paolo Bonzini <pbonzini@redhat.com>,
 linux-mips@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Html docs for a complete documentation of the stats_fs API,
filesystem and usage.

Signed-off-by: Emanuele Giuseppe Esposito <eesposit@redhat.com>
---
 Documentation/filesystems/index.rst    |   1 +
 Documentation/filesystems/stats_fs.rst | 222 +++++++++++++++++++++++++
 2 files changed, 223 insertions(+)
 create mode 100644 Documentation/filesystems/stats_fs.rst

diff --git a/Documentation/filesystems/index.rst b/Documentation/filesystems/index.rst
index e7b46dac7079..9a46fd851c6e 100644
--- a/Documentation/filesystems/index.rst
+++ b/Documentation/filesystems/index.rst
@@ -89,6 +89,7 @@ Documentation for filesystem implementations.
    relay
    romfs
    squashfs
+   stats_fs
    sysfs
    sysv-fs
    tmpfs
diff --git a/Documentation/filesystems/stats_fs.rst b/Documentation/filesystems/stats_fs.rst
new file mode 100644
index 000000000000..292c689ffb98
--- /dev/null
+++ b/Documentation/filesystems/stats_fs.rst
@@ -0,0 +1,222 @@
+========
+Stats_FS
+========
+
+Stats_fs is a synthetic ram-based virtual filesystem that takes care of
+gathering and displaying statistics for the Linux kernel subsystems.
+
+The motivation for stats_fs comes from the fact that there is no common
+way for Linux kernel subsystems to expose statistics to userspace shared
+throughout the Linux kernel; subsystems have to take care of gathering and
+displaying statistics by themselves, for example in the form of files in
+debugfs.
+
+Allowing each subsystem of the kernel to do so has two disadvantages.
+First, it will introduce redundant code. Second, debugfs is anyway not the
+right place for statistics (for example it is affected by lockdown).
+
+Stats_fs offers a generic and stable API, allowing any kind of
+directory/file organization and supporting multiple kind of aggregations
+(not only sum, but also average, max, min and count_zero) and data types
+(boolean, all unsigned/signed and custom types). The implementation takes
+care of gathering and displaying information at run time; users only need
+to specify the values to be included in each source. Optionally, users can
+also provide a display function for each value, that will take care of
+displaying the provided value in a custom format.
+
+Its main function is to display each statistics as a file in the desired
+folder hierarchy defined through the API. Stats_fs files can be read, and
+possibly cleared if their file mode allows it.
+
+Stats_fs is typically mounted with a command like::
+
+    mount -t stats_fs stats_fs /sys/kernel/stats_fs
+
+(Or an equivalent /etc/fstab line).
+
+Stats_fs has two main components: the public API defined by
+include/linux/stats_fs.h, and the virtual file system in
+/sys/kernel/stats.
+
+The API has two main elements, values and sources. Kernel
+subsystems will create a source, add child
+sources/values/aggregates and register it to the root source (that on the
+virtual fs would be /sys/kernel/stats).
+
+The stats_fs API is defined in ``<linux/stats_fs.h>``.
+
+    Sources
+        Sources are created via ``stats_fs_source_create()``, and each
+        source becomes a directory in the file system. Sources form a
+        parent-child relationship; root sources are added to the file
+        system via ``stats_fs_source_register()``. Therefore each Linux
+        subsystem will add its own entry to the root, filesystem similar
+        to what it is done in debugfs. Every other source is added to or
+        removed from a parent through the
+        ``stats_fs_source_add_subordinate()`` and
+        ``stats_fs_source_remove_subordinate()`` APIs. Once a source is
+        created and added to the tree (via add_subordinate), it will be
+        used to compute aggregate values in the parent source. A source
+        can optionally be hidden from the filesystem but still considered
+        in the aggregation operations if the corresponding flag is set
+        during initialization.
+
+    Values
+        Values represent quantites that are gathered by the stats_fs user.
+        Examples of values include the number of vm exits of a given kind,
+        the amount of memory used by some data structure, the length of
+        the longest hash table chain, or anything like that. Values are
+        defined with the stats_fs_source_add_values function. Each value
+        is defined by a ``struct stats_fs_value``; the same
+        ``stats_fs_value`` can be added to many different sources. A value
+        can be considered "simple" if it fetches data from a user-provided
+        location, or "aggregate" if it groups all values in the
+        subordinate sources that include the same ``stats_fs_value``.
+        Values by default are considered to be cumulative, meaning the
+        value they represent never decreases, but can also be defined as
+        floating if they exibith a different behavior. The main difference
+        between these two is reflected into the file permission, since a
+        floating value file does not allow the user to clear it. Each
+        value has a ``stats_fs_type`` pointer in order to allow the user
+        to provide custom get and clear functions. The library, however,
+        also exports default ``stats_fs_type`` structs for the standard
+        types (all unsigned and signed types plus boolean). A value can
+        also provide a show function that takes care of displaying the
+        value in a custom string format. This can be especially useful
+        when displaying enums.
+
+Because stats_fs is a different mountpoint than debugfs, it is not affected
+by security lockdown.
+
+Using Stats_fs
+================
+
+Define a value::
+
+        struct statistics{
+                uint64_t exit;
+                ...
+        };
+
+        struct kvm {
+                ...
+                struct statistics stat;
+        };
+
+        struct stats_fs_value kvm_stats[] = {
+                { "exit_vm", offsetof(struct kvm, stat.exit), &stats_fs_type_u64,
+                  STATS_FS_SUM },
+                { NULL }
+        };
+
+The same ``struct stats_fs_value`` is used for both simple and aggregate
+values, though the type and offset are only used for simple values.
+Aggregates merge all values that use the same ``struct stats_fs_value``.
+
+Create the parent source::
+
+        struct stats_fs_source parent_source = stats_fs_source_create(0, "parent");
+
+Register it (files and folders
+will only be visible after this function is called)::
+
+        stats_fs_source_register(parent_source);
+
+Create and add a child::
+
+        struct stats_fs_source child_source = stats_fs_source_create(STATS_FS_HIDDEN, "child");
+
+        stats_fs_source_add_subordinate(parent_source, child_source);
+
+The STATS_FS_HIDDEN attribute won't affect the aggregation, it will only
+block the creation of the files.
+
+Add values to parent and child (also here order doesn't matter)::
+
+        struct kvm *base_ptr = kmalloc(..., sizeof(struct kvm));
+        ...
+        stats_fs_source_add_values(child_source, kvm_stats, base_ptr, 0);
+        stats_fs_source_add_values(parent_source, kvm_stats, NULL, STATS_FS_HIDDEN);
+
+``child_source`` will be a simple value, since it has a non-NULL base
+pointer, while ``parent_source`` will be an aggregate. During the adding
+phase, also values can optionally be marked as hidden, so that the folder
+and other values can be still shown.
+
+Of course the same ``struct stats_fs_value`` array can be also passed with a
+different base pointer, to represent the same value but in another instance
+of the kvm struct.
+
+Search:
+
+Fetch a value from the child source, returning the value
+pointed by ``(uint64_t *) base_ptr + kvm_stats[0].offset``::
+
+        uint64_t ret_child, ret_parent;
+
+        stats_fs_source_get_value(child_source, &kvm_stats[0], &ret_child);
+
+Fetch an aggregate value, searching all subsources of ``parent_source`` for
+the specified ``struct stats_fs_value``::
+
+        stats_fs_source_get_value(parent_source, &kvm_stats[0], &ret_parent);
+
+        assert(ret_child == ret_parent); // check expected result
+
+To make it more interesting, add another child::
+
+        struct stats_fs_source child_source2 = stats_fs_source_create(0, "child2");
+
+        stats_fs_source_add_subordinate(parent_source, child_source2);
+        // now  the structure is parent -> child1
+        //                              -> child2
+
+        struct kvm *other_base_ptr = kmalloc(..., sizeof(struct kvm));
+        ...
+        stats_fs_source_add_values(child_source2, kvm_stats, other_base_ptr, 0);
+
+Note that other_base_ptr points to another instance of kvm, so the struct
+stats_fs_value is the same but the address at which they point is not.
+
+Now get the aggregate value::
+
+        uint64_t ret_child, ret_child2, ret_parent;
+
+        stats_fs_source_get_value(child_source, &kvm_stats[0], &ret_child);
+        stats_fs_source_get_value(parent_source, &kvm_stats[0], &ret_parent);
+        stats_fs_source_get_value(child_source2, &kvm_stats[0], &ret_child2);
+
+        assert((ret_child + ret_child2) == ret_parent);
+
+Cleanup::
+
+        stats_fs_source_remove_subordinate(parent_source, child_source);
+        stats_fs_source_revoke(child_source);
+        stats_fs_source_put(child_source);
+
+        stats_fs_source_remove_subordinate(parent_source, child_source2);
+        stats_fs_source_revoke(child_source2);
+        stats_fs_source_put(child_source2);
+
+        stats_fs_source_put(parent_source);
+        kfree(other_base_ptr);
+        kfree(base_ptr);
+
+Calling stats_fs_source_revoke is very important, because it will ensure
+that stats_fs will not access the data that were passed to
+stats_fs_source_add_value for this source.
+
+Because open files increase the reference count for a stats_fs_source, the
+source can end up living longer than the data that provides the values for
+the source.  Calling stats_fs_source_revoke just before the backing data
+is freed avoids accesses to freed data structures. The sources will return
+0.
+
+This is not needed for the parent_source, since it just contains
+aggregates that would be 0 anyways if no matching child value exist.
+
+API Documentation
+=================
+
+.. kernel-doc:: include/linux/stats_fs.h
+   :export: fs/stats_fs/*.c
\ No newline at end of file
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
